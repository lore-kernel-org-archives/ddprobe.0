Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE2E2BD0B
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774758294; cv=none; b=elJZQXjobLMCFHbt9ec2FbneMdd8JThm5jKdpFszQj/zmLcVRGr0pxjCVlfxPhhf6p4LestYP54Np+3+qiB7/W+3xZUq2eT7Nrco+V3pemUJqk/Nvoa/pP/wGY00UfWzBIPnRXP3F2fl9l+34MuXBW9GSngCA5bRkIA30TWr5rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774758294; c=relaxed/simple;
	bh=W3CGTDgVELjdBjtSp4fV4lRPjfI4GjN16FnFnQpLsAA=;
	h=To:Subject:From:Message-Id:Date; b=S0Uie9L20Yet7Sam9axV8uTgdznb11zVh3zNRpCHSr95gotk2AK678U7tN7JtdOEPDzo+UXVCPe51KP01cT+dRhGelkU/U04OnseRe2Gmbc0ffavexob68NPB46eXfHH0pJXDxTY+dnSW34pispwSj4xTZZkSW0Kx5b7aGy8bTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uF0WGKuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uF0WGKuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEB9C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774758293;
	bh=W3CGTDgVELjdBjtSp4fV4lRPjfI4GjN16FnFnQpLsAA=;
	h=To:Subject:From:Date:From;
	b=uF0WGKuHcEah1IEh8U3hw8RqR8yyoyD4mOBZe3ho5r0teIwgTBc9xcApWIlPrIWW2
	 mFqnAghzgUR7MrJ/fqmpekMmnPYOiCMfIiaS/muL5RDiZoRWjYGZaMnfuOjSyWN0im
	 y8yJCl3QkCFAeF6Z8/HXJ6Vf1gslMiF6U0YfzVPvczu4oG5+vv9zaZNhzdANz2elOh
	 yoYTOJPMd7bPaf9HhY8w5crS5azZlwyeO+WLuVBN88lCl0o/bAYbwtCsf9q5O0lN33
	 IYCf8/clREI5NHFVw+G6x57v66GHfF7bSK8RiSxw8KBGjMmN5a1kIYV0d6U94tzTqW
	 EqLDN56/CG4Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9940FF3D5E9
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177475829359.15463.14844322217587562208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa3ba7d71a54417155778b8db0e1ed7c7e8fdd52df310e4908fe549689d93f85
Date: Sun, 29 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774758293
