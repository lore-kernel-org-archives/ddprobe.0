Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7B417B
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B9F6C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670912487;
	bh=im0X1MKonoVtkFiqxviUN6q0h+u7OY/ENaKG7ep/aak=;
	h=To:Subject:From:Date:From;
	b=VCexTAO1pCAQT3ZMQiTrKLu+OsbGYU75444MAN0kb/l4njdlTpvuXXae+z1ApzBe8
	 DSFs61BFE3z5F0rvt51YuflyJKpXN+k9P6H8cwWG2C80Sm1uITWbbM9PVtMdWNXV2u
	 YF8R3ttEQpPs/Tj0DX4tkbe342EkTeL8NrPDxjJNpDpxgu8qLmzRXGQK/Ay2pZvk7a
	 /1EGgoQWU3daJYT6ZYNlrtGlbsTm0Q59XCXfxAN40OZBsFRhIwcYRnIYNAU6uuG45n
	 F5EdFdsYir9eee15E/LisVYauleu8Xg2tpiIz5K+jseJ0RhydQE70Rdm54d2nb3Ner
	 uz3tyCAhQ8d0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66128C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167091248741.20364.16340828990642262926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d47b00a7016c624b10595bb4156717513851eb6c66d4eb50a608fcbbb7b475dd
Date: Tue, 13 Dec 2022 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670912487
