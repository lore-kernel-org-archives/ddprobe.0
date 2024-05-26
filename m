Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E35A16419
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 14:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716734663; cv=none; b=hXSYjsAr54lg16cylLAYQuVFh8QO9VRvwtI7QA8zS4LajmRODH9mQ/tTrDqRJqPt2Iuwahuj02QsjDmX/Yz2T7s66VaUkL4Gp9XtfhwK4xhyn5DP9E9Sn+9RAoR6zWI+gr7Fw5at708QJuWiehxFsJsUFYBI6iE7v997y02XQwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716734663; c=relaxed/simple;
	bh=jPOc5jgEsfaS+rTZSgyUb1CjEhbQUJKoyqnPUw/xf5o=;
	h=To:Subject:From:Message-Id:Date; b=L8ZQcOHepegVaM3n1tYADiyEBGJjA3Oj9kFTFp4lyC+ppl7MPgDgdAsMQovU3TzL8MVhzx2snpRC2cIWaOrbfsMVoKIvqyN3G7cn4b4oVk8bZfWlMyQ43p9qlLMXwdaYlYFmvHKF0Vvf+g2fp9P22jEoTjnFaeBrHIFEI/LkP3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGHjjy0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGHjjy0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0178DC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 14:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716734663;
	bh=jPOc5jgEsfaS+rTZSgyUb1CjEhbQUJKoyqnPUw/xf5o=;
	h=To:Subject:From:Date:From;
	b=QGHjjy0OVx2EXKM1r4xOL32VV1eYtg9QFfS3nNZkEY4p6nsdLqerctmgL0wn/5SOP
	 j7cxqjWyhMgldhYj7n65yBwa8KJIcxDOxjcROqkqqSOxFfuXjUG1h9wA/jLhP13zqS
	 /beTIGtvV93oXBDEzwJq+5DMk2Q/wlFMw4sXzf5tFPXncyb72/Ie0VT3A8o3Qz10e7
	 ExUGfr6RGkgcSgI41k5zZJLRlut46N+Ru30dIREr1DckiCvNrfoAZ4VXPTJYdA+KlU
	 yeVeAM53BD/nmAxF6FNF0iYiSS/seoDjoUOngCd+246vytrXvr8fo47I54rHI3/b6P
	 JmeNXHugJqFDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CDBC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 14:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171673466275.9924.15955427148460144506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c9ae57da77d90eb5e0c1db0313a157a04750c82dee3dde431bf478146467953
Date: Sun, 26 May 2024 14:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716734662
