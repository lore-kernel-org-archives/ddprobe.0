Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4353C2DCC0E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748744394; cv=none; b=tbdHOBEph2xBcogq/4T2fIE4fZFDUUmnmDY5Kjrp2C7+PT0RUlIZ5TmaEYonBOQkqYZgbqc6B74UhZGmwMlmuCg9aOAagXaNN12nPkPBZoGzAe+K3ci8sAq358IVOj60Asjj7v0JWbg/wB2v6TT7+Cu54kJb6VOwhD3P8RI6DyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748744394; c=relaxed/simple;
	bh=C1B502jwiuMhPSh1eBpL5TM6aDQfY1v/MZml710ZnOg=;
	h=To:Subject:From:Message-Id:Date; b=E9kOAaZx6JS/5YNMEAwFrd61d/NaBwrYQqmuMi88vZekIIVebKr+JDJ9a+7wecJzfLY5yaztQHixk2UUw+aXEGCZn9g5wJf/8kLRGFE4+VvvvisRX4ZWbmLZXyZCqhrBCzp2VCVUajd9Wc8RkizJn1sq6QZE+jS7GiOq+2PuAAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+sT5mcn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+sT5mcn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D5DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748744393;
	bh=C1B502jwiuMhPSh1eBpL5TM6aDQfY1v/MZml710ZnOg=;
	h=To:Subject:From:Date:From;
	b=t+sT5mcn8nB8XxwcNiCIvdmAH3cIlyOvAKHL5gHXAbwZIkKB1Z2tZHZXmQDFyMeDN
	 +vI6kRz44yMjl0jQPLvySagjenTDqaBK4zQZYmijtA/YMM0lyaBQHZDSddkii9aFRr
	 oQGm3AR6MNcUCOTP6E3iPHxkj5zeFIgaEH2u6kgfX7lHrciv6yocNkK2mt5+DxECFq
	 AJUx0Y5mZmRmt8ay4FJ3jxwsuTQrZpFqJ605WQSMdQQiTdfrIk4Y23GH8D6idOCGJn
	 NPUWMYoauXM+uKg6Pj0irjGoMe0PTQj2daBICjbs5QxlZK45woGNX8FKNDOimLmBbT
	 oHF+Pdf5R5EFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDF2C5AE59
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174874439357.14828.9662284495385034435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253d3a2d7eb7ef19d19bc9a45a4a3a960a5e374d419975d18a723be3390dc1f7
Date: Sun, 01 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748744393
