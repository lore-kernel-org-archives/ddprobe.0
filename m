Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEFBD1FD2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81334C43396
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671616287;
	bh=fYLoMv+U36kF9NcyGkJMxPMiHkvVb9EGX8GllvyRD+s=;
	h=To:Subject:From:Date:From;
	b=Iep7E1s1Sj5uegtFOnefu5T2soPHLrGmjvOLg31VqHsQYp75sMqZaSdAtu4F2Au9i
	 k4P9/ZzPPBt/wSixJCg10ikReVNj+5fKW4tW7kpxtR4ca5DxOnqe4dS9lElt8082GN
	 NV7wEIY6a+8cHII0yHUOUXKwS/z4VxXQITGB/P5kvh3MPANNTJfIlT8U4hdLEmQrMd
	 vyEmsmDoHUlAUBipUYBbuczvYFOUt3gZc7TnD0gKMtgj+7xBUkO5W3EqAwCVjRFgKi
	 l+R6Yh3xVXLgQAoYF5Z4m4XC1PXPhJc9ta7RgDJcVhVopOv1PdothzCNNmHohdcyem
	 pb7VF432CaVXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67D2EC4167B
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167161628741.1947.13104443863562994499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed98556577c5e27e6e7fda4a69396e2ff549518a16d08546ed8dc3657d7b3ef
Date: Wed, 21 Dec 2022 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671616287
