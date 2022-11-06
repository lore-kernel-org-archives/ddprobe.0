Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C4E187F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 04:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8769AC433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 04:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667709654;
	bh=iXKxF8T76jYow3CSbj3KW+TNaWAPFrzYESQ4ngaOwr0=;
	h=To:Subject:From:Date:From;
	b=Rvyo0/lkuUeLCjjwszbxPurY9Qajl9YbZDcWVx820kAAZSaykaUfGNWtMLOVIA6aL
	 cBC6I5tg77Jsr42QaDPa8wBrW1ekEMS2IxBUP0h4o5AQCi+PEONtSTqThz0wvTq3b3
	 PWIYXuBL2iA/4ahE4KJX9mtOrnjKK7zQ7zSw1KM8d9AwxR67B0ETjXIjH1M7r+BB7i
	 IP2VCm45Dc/GZazdz+a/nmqrrgfoBLHPxsmZ1L4rrcguD7d99ccuy6Vg/mFFIzHK6F
	 9wv865i+UTp4yCJLQ2Fm5V5Ow17HdDpFatvLFtdC+ieYuhKvEt7somz24oju1l8Y+0
	 ipxdwD0HQp8oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60504C4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 04:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166770965436.6516.13776004559645191252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deaa31cb3011076d3df082ac1cc2e75d90fc16d604011749582de93982b858a8
Date: Sun, 06 Nov 2022 04:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667709654
