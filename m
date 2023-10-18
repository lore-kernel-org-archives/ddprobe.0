Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F54D1EB24
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 23:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CI0TC1ek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9BB7C433C8
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 23:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697673492;
	bh=XJw4ToLIFxUThi2sq+kAGdGhdQJzvwHFQIqK9lev88w=;
	h=To:Subject:From:Date:From;
	b=CI0TC1ekununzrreXmJPZ+RBO5WfOiZ9FJPUVEnah9b2H0snQYqSisUJ+WQzrQT6B
	 c4rox38EIOmV4NqVmapAd6kt9sJSf8gMRuqVSfYtJ2MXigzBiycp+4R1cy0p1/jvyE
	 QSHPjvxwSC0pi+jxnM2xUrZxcEAvoInK+SUWVC+KtUDl9QiE1+oRzXBgEAbo0twILk
	 fjcCUXfpr4VB8jZXSTEcKsZlLl0P26rc99HNgZtOYO7cMoivGIgdHl9vpzgRTEjMRL
	 HEKYycPZPuDa0ECdcBIav+RyNWIfuXWmKyVkEQEXswzn0ILP93Y9NMVIO+dsrSDKt0
	 37H33Ri2OcCQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D04E5CDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 23:58:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169767349284.8279.12945271092957932431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf75b00b0dec6ab62f7605fe50aca5e8d02560dba6568fea8a0e020aaf8cd2b0
Date: Wed, 18 Oct 2023 23:58:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697673492
