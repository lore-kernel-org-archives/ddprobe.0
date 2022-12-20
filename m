Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81A47E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83A3BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671572487;
	bh=1vD/2CKLTy8O05wQlWYwDkBvZG1CbHMZD11OhmUcel8=;
	h=To:Subject:From:Date:From;
	b=jSbKlPfb+/mVYWNyzw4w92w0kzuNBx7vFTdq8Oh7/ZVCXDd4k4hxUtIi3SMiM9Ssp
	 uilDTvJOgbsxjYdsreXTRMv1LtneOe/OWXQApK+hhOVNZLQ8fjVXf4rBa3oLEQ56R7
	 KOWhg4VDdvXuoNFvthi9PDkiVidVJLOWm9r8ZcIPISsd53Xo3quVf1OZiX/W+aoe6u
	 W3ktHCZT7onykURMpSsdWOddfwRms9/rFCEaUW8tEnOCGU0uAfPLN6CRxFFHzkIRlR
	 lQv99FUDD1p058a6akFT9YMerivGkYld37NtLhd09l33NHXZeLi8jjm/voEbUWezUQ
	 K878br1wduD/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62BBEC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167157248739.9251.3333178369244354857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1afe89df134a5c603aa7d553c68bfd4c8e32572d1efd4e5e84d0f2b6b2c6325
Date: Tue, 20 Dec 2022 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671572487
