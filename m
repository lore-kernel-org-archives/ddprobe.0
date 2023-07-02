Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C67A17C9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 15:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83FDC433C7
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 15:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688312048;
	bh=Kq2ZmOil9/TwSy1ivue34Rr+gWgDOM/6qq+Na9Lfovc=;
	h=To:Subject:From:Date:From;
	b=DYpUvXYEa0ZUuh+aLcpTzevckWmMdSbJ39dMAYT2w2Pbo8Mo6DL3gnP0HvtfMN4nz
	 q+LY0/6l74A0bNUvPBuuvweHs/MnQPrbMy+/wZvWrKmHDPiLSu9zd3opw/Mqy2Px0c
	 NW8DEjamirEOeg2+6nQiTQyvaVbwzYwX0Hm9XURhzaQ7gG8HOH2vcEM4UeibhW+SrE
	 ZcIVMDjbZc4R9akaDJvhnbMtKFlwT0W4zh/b3uBIvagG5A3/tL48Rfkw/aFGzIjW4e
	 tyl3iizNvOMCuH2DDlz5+3VWtmeU+H5ZYqel9IoW+QpnSZK+CnslqjcveUF5WpgWMV
	 eRApCTV5B6PIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEDAEB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 15:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168831204868.5029.18234446671911296511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df2c16e9bd0d7b204658e3d021e0350ce5a507f8f9904963d6b3310ea2e70b0
Date: Sun, 02 Jul 2023 15:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688312048
