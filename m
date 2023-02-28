Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414AD9475
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 22:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E36CCC433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 22:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677621965;
	bh=qr5HaOcztFsemMEAC4hTx5o1DO2iL/RxC6U6Uuyhw84=;
	h=To:Subject:From:Date:From;
	b=ieSw/li70rzyMh0Vl4yrvVxe7HdB3LTF1NQSFZfLRJL8r0wfdSxUAAqgp3cGx8UHa
	 VIPoerBha89BLVfi+YT8EVHTfRAKvX1iOtNrQ2bIEEIAsuIFytSEcu87AyiCpCVzid
	 Plh2ydtwLOVvPYngHdBKEPxMlG90377aoY+bwTCnIe7ilkUcZF2ifxPyp4og4l+mrT
	 2C7VMS/aOWTHt7WqKxd4Rp7AFLZu9HQR40u0W5/DBYv4+qYVZ81/9LrEQlzUZaoML5
	 mfgNGCVZu6kNghV5719ABqtF9BN+VTul1VRGiE+fS9zo8amLosemCJMOowon4h/GmJ
	 3qAqsvyEDd3Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CA4C64EC4
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 22:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167762196579.19658.18048621120174646064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6560f4a6e2dbce6f900139081dde7ed3dc0c9498e0866003398f2c4b8fc1b37b
Date: Tue, 28 Feb 2023 22:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677621965
