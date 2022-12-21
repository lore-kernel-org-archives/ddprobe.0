Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10B333C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F09DC433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671660687;
	bh=tOEB4ftt7mJntemeQjGEE8ckl9B2sBWOlqQyByUOe88=;
	h=To:Subject:From:Date:From;
	b=jUiVMZG24T6G4H21OqXBBbThSd1bSXsIaY83vy/vtkbNKR8U7LVqKMMgcMlmzRO9G
	 EuXRzM22tXQo/rnfMzOYvyodzug+mDPedeaMsZiyx39LpkxqEryFCU5mHVMxFMfz74
	 MIE6iGJaG4eMi8Vy9qwcu+PFjDEuC9JWB7pcLxhxCyjthB41cJ/1Rd7geGqw2tLvLD
	 Rgu+kr0Td0M6Nkoa6Dcqcg0EV0KjsL6KFdiYOSuDT0T1i/ELsbwciDuG9OtiSameVL
	 ju2u+leZcFU8eq4pe4yeOWx35yJYW88UcoMO4yfBVDKWDgtcmIE2Uy6Zv70yfSBG4s
	 tI7iGFsVWY99w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 698FFC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167166068742.12361.6703593999224544969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 692c35d8e21341b47605ad051b0fc3520c2f8435770ea672db1b7f44f75ce7fa
Date: Wed, 21 Dec 2022 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671660687
