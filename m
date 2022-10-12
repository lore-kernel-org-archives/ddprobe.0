Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C470D8F6F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DC86C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665573653;
	bh=bM+RGew8QLUGecPxHCABiupQzk6RcWclNU/5vxSQ1vM=;
	h=To:Subject:From:Date:From;
	b=g1wBrSW1rUTVDHaueQGNDawzjkp08QA8EOglQ+mapfdJ4jDJWNjZ2WLNIty1BHXIW
	 VN7Ra6D8Pxgo0F6S9F/QRcHV7zBtZ8KfYoutDNgYoJECpzg7zH6zi8H+T4fmPfuaHJ
	 A8QvhxKEoZ7gZuDQimCTJ7djuI5uBCIIAlHaVNn0Vq59A1VfuUT1ZHZUFCWE8vA18J
	 yj1CyPaUNFfIrWK1iQxVefw64ioysl5LOT9XTBVEVAq993Xqgl3j3q+Q+KKQqiaE6Z
	 qQFO+Wy5JmQUvuJTc3SwVH8s1zQCoIVoGdY2WoqZZhLy3N9KdJ5yXRrU9leoTKrwD4
	 rfQRutvquZPVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 518BBC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166557365332.32683.17349379315730901582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cfcd2a2abb85bbe4b462424f91f9861f5992a083f8cf13c910f8cd807c5a39d
Date: Wed, 12 Oct 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665573653
