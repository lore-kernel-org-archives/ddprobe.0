Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C410A1FCC
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68DD6C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663041653;
	bh=z9Bpi5vsz3DW0LmTNtnJEzk4TnKxRfzf699GRoOxXno=;
	h=To:Subject:From:Date:From;
	b=XB4VMkYi5deT6ixLNSDGmCqu7b2kDV4P0BtxfAFAgQrYnDuXGsk0dDQHgTFo3j6M4
	 /mjlTszTqPxOZKts7WQPe1KwUz1a3DBcity1Wq7W6rnfF00AKB9qK84UU4lk7Wzi7O
	 U1hmTuKOnZ8OH539azneV61DJWi8I+grZRGy53ECDh3TiTkrh8pf2eDhTcY9PXDZIG
	 OWzSeHVDNdH+7hZo6KC7Y3xq3IzM0Ae4HOJHzhTrfqXf6zWeny5wgrWMQmbY4YR6S9
	 OcVJTT6ybNGZZQaxYgmt8dEEti4Zq/9gfQ2cDWAMUlxqy0dpgy4ghcXDg3CBEaJwD1
	 sGklOV7jImqqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F943C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166304165331.20364.6759538106619454897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04497f3d8d734cbb2184cf64ca0c79014a53e79e1542d4f0144595d72768392f
Date: Tue, 13 Sep 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663041653
