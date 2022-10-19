Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03653C0A
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 766C9C433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666197653;
	bh=l+Vtk1UAujuZlFdIKxhqJOUlHBgsZy1ujKgtMk+0Bvw=;
	h=To:Subject:From:Date:From;
	b=JUfVz3iCCOEUVm9alH4zoPrgX3YDT3pQEy8xK0UGQbArh+ET4OR7y9vWOCnMtVNQu
	 Tn6yc2UrG5QooFkPxSZN4+sBFuCwfd0eU7Uo+Y0XZ+Qw+FUMA9hxQJ8jSu9CorGIdP
	 CTAVFeIwIeqin03fUD5NHIk1GYkBTvIJJjkKF3SweeyKNEEZhJN1PpAT02yx6iZAt7
	 wyZGCUMVpKzW/96peK/SBKItCLxdToNDNDlFAiHgYfSmzeMCNcQkDSQQ3fthC/3XR/
	 Oerw6xz2x11yRgsUuFvFJ1fTBG3zDibsNrk9/l11lm9RgwcQa/pywkALO9nL++M/Hg
	 t1rhg//LDnHVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58FE3C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166619765335.6492.15195441044509563846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7364c052869ea51ea83a1b540d4ae8c3e9cddd7d726caaa8b8499302be49b734
Date: Wed, 19 Oct 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666197653
