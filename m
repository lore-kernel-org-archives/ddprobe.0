Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF84220E1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C5E9C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666391453;
	bh=VQfa0KwKQxJnLm6/wXpFDZzgApWLUO23MDlb4NiCmUs=;
	h=To:Subject:From:Date:From;
	b=spzyt0irx/K8B4+AZwtUv0WypV07Oh8rStiDz2X72RfxTq1OB2rA2xR6kQIeL+tih
	 VKPnvxw5cWMxdVX8EW/TjtGI0sKJh0Fbp0JN003EkbwDlyJAnUbxh+BhzmCbuyOU6z
	 Kt36xy23QYPdeayjaNRp6Vll6FnfIUbZxxNU3pbWjQTvmHECb/LM7AfjE91qAOrOzr
	 +cvn5C7MjdtMaruLIXlzKJwUuvGbCqEqqjLsWxoyHnr7xC2SZ/z/n5xYHVt/i6xvBg
	 2hRFveXpXOml6pYW64C1xVVtgLs7PjK1ljOTivirgvBjnZ6NSd7ltRiM/MNTO3LkD6
	 9yONeA5DxClbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51F7FC433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166639145332.1892.17781522121286667190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07b94b572873df2be160d231df59f624c2adbf072c6d797d0e8c01867eb943ed
Date: Fri, 21 Oct 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666391453
