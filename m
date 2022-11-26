Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43AE7E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7E9C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669500654;
	bh=VC9paVbOdqcPTZuTeKgd6mNvNMd/WC5lcNDAjYX45Nk=;
	h=To:Subject:From:Date:From;
	b=gGmgFqDHUxndQlJOqenRhDFX6Lo7BsQnTCs9zUrd2el6GrUbya4kVsbLeUjP1qWdV
	 OWuwkyLwDKHNoOWxdNO8tmqn4F0KoGiMzfTHMH0uaiUi/pXAp/5K5RX+myjbTrtkR3
	 huctDT+LpoZ2zP/bFSYK1N9XyBL5MaUtppCvMYLrEUQiiYHUu5pPoKWhgDUnrjfrVe
	 gCD+elAY9TAfCZALnfWwAmPOkW4ndFTWKbGamGCY0i65oTsYKtUXDCLxM3xRnorsqj
	 QKHNuFhjDfZDGPqg9IwhGiqNMFATb8b6cqdGM49k0TRIutWHQdh6CesMmV1f5TXe1P
	 RZheSpfs0kkgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F7AAC43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166950065435.7139.9213456273580162637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55c9c6d3fe7afca3011d0b7f7531219db765ed4006ac714700d694b0b8b51cd
Date: Sat, 26 Nov 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669500654
