Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E543C1AF0A7
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759322394; cv=none; b=XEhcu0xlfyOzPqHRJJw9PI6+LzckQOxu26mhPMrfgTNBLR0fUTcS1kbTFQHAiph5Qxb708liVxP+XxDY6ciUmffYZRGf0O1tBriDlW0wXyeUFCIrlObRE8LCoz7LUixgY/fR6dojIra/fV4I35U3lElajantaO/SAlCzUb7EcFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759322394; c=relaxed/simple;
	bh=ZYaOxi0gN3jqLYhmTU6U/Qj4d5uMSKBV+ff1DtvqnXQ=;
	h=To:Subject:From:Message-Id:Date; b=vE2mbvE1gQltbFMQx5EHMe7QqOsSLxyC0juw+XbNygjp5BIHylwa7oNvwK3nsp26hSyQpR6B1qK77Hcggs8Tl7pja4PWydxGC6nAXfZpHFs/c4N/uOO4swdv3muFalwLs587nojqkisDaR7tNJBq0F6g+qrMRUqSr1E8wWqoyBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6pyl5x5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6pyl5x5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAE2C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759322393;
	bh=ZYaOxi0gN3jqLYhmTU6U/Qj4d5uMSKBV+ff1DtvqnXQ=;
	h=To:Subject:From:Date:From;
	b=c6pyl5x5L3tCKzdiEZ8rEdzcFIUbSqSLq7pQdyUOujbFU+9OGXMcJ5lEOn1p3t1H0
	 yZYsRlJUpcGqGAKn0CUGprvuDsGLAtgcygI7ZejoXd7txYPwkPJqsyP6BssUWHik5v
	 YtHWF4pRAeALkDJc5YZdyZ+xvzlx2VhfDFBs/+NWJBeZH4ae9dlGQt35M19CnHcVHB
	 gk1yaSsv6zi4hcnIgBPdyVR6ThGuVbLXJqBswnSNKQ3sdQd3RWbScAeL6Ke5K5RxWu
	 bJugYHYo86R/Eg212//TVm7Ch7Z4jysGz/RZAEKzR2NTT+OCxc9ikhqvfBnP7SoQgY
	 Bv/DKuKcu+Qdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99033CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175932239359.12713.18079637887645425048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348890b1b9b52abbd38da00a893092f1a23407871ee8089be7ec2417008c9cc5
Date: Wed, 01 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759322393
