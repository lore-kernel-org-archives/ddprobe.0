Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F3F3441D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 14:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13766C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 14:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686494526;
	bh=DAVdvab4jsT0vwCRPVIarJahxS1fRzDmrW7QkIv5A+4=;
	h=To:Subject:From:Date:From;
	b=paWFRDMw57rv3EUGjL+CaC/3w8/+rg1s6j5WqX5PTk2BBoor3sUXkKtL0FuCzTASM
	 /ogd3Q74iYbMnD8wQT3t7nEt2rL+Kr4SYZyk6WK3StNEfwSbQQZNAsiL5Uia2YHuZw
	 2KaJsJNNXgESQZ9nG/xgO3QxPxp6pObNonuavzaKj6cvNXjK5vY8l7BaL9CS2cUth2
	 ASB4CUFJvVX2Mtt5/hGOGEaX1vRark9yOOz3bsnbPCzN2N94aMJwyXviETMp74+MhR
	 kVSjZNUdBk6vRWNdMwtAZaQRkDOzzkRZDLgHUYMENIzlGisBUr0+RB5Kkuf5kZr9+h
	 +zai89xTJdBxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D61E1C77B7A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 14:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168649452577.2718.11078077045642104870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 530eb09e4e3f2f419b5b61f0bfba20c1e82e0e926f0db3dc61774c4f5fdd5614
Date: Sun, 11 Jun 2023 14:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686494525
