Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9BD2222D1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768011234; cv=none; b=jP8M3Kz5TZUp91eUlkf8e9NCEbFxakR9ewaRU2nHWjrdDoR/2RavwhoABenKO37ymL5KYroLK0DPdRE7PXV8LdaLhHxcFHoBQ5XUFLpdKf2T1X1DLE6rT2N0XyMrjNhSCUFLuVvUNwZD9I7NwlT0BW6pPzxf+4ctdMO7d2A/MYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768011234; c=relaxed/simple;
	bh=WlQzSOacI4+KhCE5Uy3ioiDeAaowN/uYvkSlPE1N1VI=;
	h=To:Subject:From:Message-Id:Date; b=uHdv57H3vWPrqSGrzcKoaId6bf+P5b4rYkZ+gQkQxESBkUrvqe6Egr89Or5QEwrY7D2cA2SogjCh9ljRBlwhqnKNl47XenfKriRvNtSyegW/7eAI2aJKV6vh2jJLiW8DEonc6kggxDtEeNAO2W9QIhYFF8BenGvHGfybLPoG7e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSTym4Mj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSTym4Mj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A061AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768011233;
	bh=WlQzSOacI4+KhCE5Uy3ioiDeAaowN/uYvkSlPE1N1VI=;
	h=To:Subject:From:Date:From;
	b=aSTym4MjAA0KsUHNdqOL80/rDOm7I2WDrEn6/UpPp5cvJX7XmKdoBp1tPLoCKfIGS
	 LTuR89Ndi4Hup2vcIcOvtZiuVt3ht+LZzXUzQIrTVTxUVTpyF0TL5KCcOU4o4fbeIb
	 sZ/640Y1cwy4p14NUsgpYIPE7zW2M8+EWpPD9VEuDes1yeNfXgXb6PYwRKOoP9q8He
	 TbV4j+6g2QoHDDqMu42XiP/+qjz3Zf2TGEvKhrIZt3aNHjkElxeKOLbs+DbmbbE5+c
	 gbnkw/Eg9OdlqgmTbsE5RzrH61mqwnx0j324rpNie+ADLE7bIC/1hbSS8xIUjZiWDN
	 Qe7Cwaiwdfheg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFCDD277C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176801123358.7293.6770443957527331258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b819913521aae03ee5a22b0115b48852a5def6b48a4087ba17654304f159dad0
Date: Sat, 10 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768011233
