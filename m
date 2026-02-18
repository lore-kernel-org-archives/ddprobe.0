Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3027A334C3D
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771454694; cv=none; b=RdLCl8a8lQsC+tNs3gr9/bR5sfQqnzn+hkkfBqzbjfRUEqsG7Db9xOISM0uhmr2DGAc8Qlcz+sGDiO6fvs8wcalV51YRp74+HGsuI2IqtGT1MCv6+bddNq8a/nCa8jWRWNmuJoZvNRu2ItF+iavrr21GvfhE5tNzKmJmFa/KbUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771454694; c=relaxed/simple;
	bh=yC/jatR3Ehfmjtg45LrAyvKI3xC/w2hBjixhRATr8J0=;
	h=To:Subject:From:Message-Id:Date; b=Qe9FASGrVSEkzgOybtng6Ksk7LH2ijgLMJWl+gMIm7UFn993Xhmu9n7yw/KEcruP2wgh0nG0exun3jVM2yh8UvebR0mR/qGw7QLfRl4VcDam0u3iA7ovwwuoy/FLTx1u9vYviWKQYgpvuTxaHCaIrJg2wtf/HDkQrzdnqe8lS3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZgfrcVyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZgfrcVyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37A9C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771454693;
	bh=yC/jatR3Ehfmjtg45LrAyvKI3xC/w2hBjixhRATr8J0=;
	h=To:Subject:From:Date:From;
	b=ZgfrcVyuwK3hIKHKAzM3ZpRjvyeDwakQPp831qdmPt9JiFguOWB+AUXXJyRcK7k7S
	 0od3EI4ay8VQo4eHACWWhoNXLtfDL/GIBh0YoRNrYO1AgRgTH4JsquXmXAVsmV4GQQ
	 Qy2IWpLcvzojET0jbyvQCSJLMTTSmN0OtqFOQEcKcFecRTjP/1D/xWW4KhG8CwiR4a
	 xcuPyI6k67+AXt7clzrC8aWtRffbxmevYP2+ptEw0m+hf0wWym+oQirD7HYenmEbQw
	 gwlKidUC+tVWKLffh29NyX0XtbnU9NUmGktfqspMkW0uzy2gpMpghIGMG1KN23YqCn
	 0/zvUYlF7uGmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E6CE9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177145469362.6497.11904548616015267682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09fc625f3de0fe9e5b116526bdf99f5932da0d6c49c5cc96042cf337327b92d1
Date: Wed, 18 Feb 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771454693
