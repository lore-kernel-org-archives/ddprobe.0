Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA3A125B3
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 17:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D63C433C7
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 17:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691429588;
	bh=U1xBEQrHCSOcQLKVIPiXoyA2M0ZDszXcirvI53VXXPQ=;
	h=To:Subject:From:Date:From;
	b=pTOcT36cknzPAej20MvLKgh3Rbsr2yizkyymGkBNFm5QC1y+WF64dwVhU550SfMmV
	 ZYv/Xmw8REs6Q7NGDx4CMdz/swzL68nuUqytRhhI7cGzvrCtBm3saUftY+uG86H7fz
	 /vfeAdyntjPVMlcsTce7Ro8C7aoYp2ZxBmGapsUrHnnkXpVOLJBbUzqnSAy1BMz+z9
	 zQIXlvelktUzgoBXR+WctQ69/DA3BsUWWm9HqoJRt8Q/6q4IfD86+JKtKgcNPxnvhJ
	 upuBNY9RqPiVyhhyPi5KAKd/WoOH4+6ygk4X4X9bXpNwrrR6ZxYp+AvaSOSW4YafDV
	 Ki1RkDmfHFqsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB704C001DB
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 17:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169142958869.13841.891644942762138081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ba82452a418f6c68b9845cfda1f0800d136fa036a8bf35a4c9ee516211b248
Date: Mon, 07 Aug 2023 17:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691429588
