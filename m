Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096DA1374
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyaVQrwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 832C7C433C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705280896;
	bh=FawIZAz+ROXbmBgPtHj9qcqa6yD6QKILUqplHI7XJ8s=;
	h=To:Subject:From:Date:From;
	b=hyaVQrwxwPGYHpSoUeEPJHRlfrY5cquTuJlGZK/1nhVlFi/PiQxz6yJHq9uD+VSYm
	 q7yKkmyBqk4wBEH1AXnu4lo7tnzlAHPSEMFvqHDXTQtHTu+hEHvBC7uv6DuNiLi3x+
	 0rFtvviPDGZlUtj7a8urc2I5YTaKJUwYGmApYmCGSz0EWj9eiUyiVBK11Yz40eb7XW
	 KiDd6C+aUB/BJNX7Snp3Sfj02CtJFxQITzy9M7xwsdtIEanMoz3l9KWOujdZuvCwmM
	 nP89bQPF3wd/Y3x/bisDTLVO7RoPaV8OXGtD5zKJRkt7i9/ChSW9nvc4LSFxkodDkJ
	 uKoDhS48i4n4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64DE9C4707B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170528089639.2130.9854363475949994524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e16aedec1496522c1d16e826189347bc8e80041c16252c97e9665d57860a9f
Date: Mon, 15 Jan 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705280896
