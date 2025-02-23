Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9A72AF11
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 21:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740347934; cv=none; b=D3Ez8Zg5nzqsP/wCMW2boiAr8P7m2jXTBq9AwRj3jIsyrn5xP6MKP0H4sWibZ+qdCRFWFhQaQeUjE9GcgiHEHfgInjjxtb4g8Wc9rVolm9A1U5S1hITZorwdJ6wZfQpMIkX0vlKkL8kNAidTh6I3QmpeqvM0FNJZiDSjzhbXNO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740347934; c=relaxed/simple;
	bh=e4DS3zCdAsnIvJ/jNZqYlEPGQDTIkaKD/b5DXV4t0fw=;
	h=To:Subject:From:Message-Id:Date; b=bx8Ahvd4UixXTxYDSZsdlq3ZzkdX73BM9/5L5bB7Zdfhpc2+Qk0Se4oGoByxC8dCwoqQXH+1u8zbLDhlzIlpmzQ92s/f8Fo13MuAt5KlfzmiQ6LUieFP8g3zOlH+R0Jucy8LGEG+3Q3YdLSu4kJz5nn5M5du/xsOgXlxUK3nMwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LK1ZVabK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LK1ZVabK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4CA9C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 21:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740347933;
	bh=e4DS3zCdAsnIvJ/jNZqYlEPGQDTIkaKD/b5DXV4t0fw=;
	h=To:Subject:From:Date:From;
	b=LK1ZVabKzDZ+MAuPZ6mtrj+3tu+vsjTppSyEcBWdkK83JlcsHKr+vil4fMkY6jbEt
	 V2UYo+VNb2DxGIF9nSLKCPTz0jxc7cl/VkDHHcF+5XHZ9li6ZkzP/KiC0Iv2NJNN9Y
	 n7fb7ozSbSozZV3FtU/SyecPs9anWAp4WZ7lwnaTSzi7m1twyXO9lVV8bPZNNpXs2D
	 1CCVoZSjlRvp5MFDg4cwFjwUbzfy0VJOwYierd74y5nOwT47gHAn16F+B/2EPJPLug
	 4/zrCqIEUyuTJnftaf4c4wRUiBz9bOJiM4/J+5PWC05zMLXq6VMEE+6AbrOWkWzeU2
	 ZcX28DtPOmyhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5672C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 21:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174034793371.11847.9347360081766299915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 641392eee4e22643ceb3075d8e0c81779001082b66497b81ef383f4e547675cc
Date: Sun, 23 Feb 2025 21:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740347933
