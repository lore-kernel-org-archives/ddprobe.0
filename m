Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC01217736
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 06:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763964714; cv=none; b=ZInuOF8M5wOzAc9HHqxYf+IxRTGC4R7Q7wMDip89HAckjSKPQRWFjkLRGBti8MFzVMzp58CqLMp9W0fORrRiXnCZi9lOqoPWnUU4vvHskCoR6vF+inz5SSfh7UvMc3GPHNP1wRhrXXFx75WwcInXMghQrg1NZe9jwLGllloD+qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763964714; c=relaxed/simple;
	bh=vFZW4nl9D2G/3/VtWPQ+NhTA1Bavd3SuJEMxQTYcr00=;
	h=To:Subject:From:Message-Id:Date; b=S36pJf3fBGdZdJ70PsyeUgTXCGUDI4tdqr4c4HR2eev3iUPPf6UcSVRKG4BHXrxCxrs5wCVwUzhNQ7SVR1lwpxMZ2+5yVPdnJY9WCIRbt/9OqMKJcTNnphlkXW3uOafDnvd0PsbCVkTVNb1O8APn/18isgC5eVHLPlB+NX9WP7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGW2Hffx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGW2Hffx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56DCC116C6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 06:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763964713;
	bh=vFZW4nl9D2G/3/VtWPQ+NhTA1Bavd3SuJEMxQTYcr00=;
	h=To:Subject:From:Date:From;
	b=hGW2HffxWJ0NpsOJR0xtjiRhXBPzI5lopG2QK8N627dwH9vccTnjJ1jjgUxUJl/fh
	 xWe1EtPdaKfaSKTaoPMiCGPsYOOqz/hrFuE4GhB7O7Nef9aJ1ft0ol+DDqE2OexUr0
	 EFhjWB+QyyiEhQRhSU6h0xIZbSTppfAzTCNf66hNd8SMt7oOx7L1XHgp4m/MEX+yUZ
	 QlZzuabOma7LutnYfdwClM7ahrILQ07hiQDLL2hZ3w9NDXXjrkcBvZQMncEW7rMW6q
	 Ixq1YOqWaXsvtji5BjHm8WRLB0APGhulqWMC3s+dS0bHEWAHAQf/AsV7wvsmoJo+4b
	 8d4m4AW7j96tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4BECFD318
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 06:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176396471359.32720.3072908439721798519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15d32019ee4bc690b74d6ca514429d73e448ba1ef16b86b53805789f4a92c36f
Date: Mon, 24 Nov 2025 06:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763964713
