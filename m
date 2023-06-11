Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BAC4399
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 02:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08C4EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 02:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686450726;
	bh=mo7/DqWsxARkyfgn8jSGFQwx2d0VwB3gTNd3o8uWG1M=;
	h=To:Subject:From:Date:From;
	b=HrxcSc9eaOlq4nMPZtBoNzYZRcMdzhigeg2U0P/IAHq0+8gnu6j4S+BrC++ulumne
	 mj2OkcmkMb7ju8DyADdyADT07IKHUB3iaAkhXLsBRkTxcUZNVo6cH/RAI5DPX2vPcv
	 Z8CNoEHytLYJKMsYRUxf8SxM04RVJZun0IwU92a2XRdjKkLyKkdThvJyyV7w/81gfe
	 um0b0vwCv125+/0yorGg+To7ozJaVaLMGFSW2tXBEFpP3kO1h2E8csPUIzzvMuUh85
	 n3TBKE9Qg1OEoqZv0c3i8jHzkJhIGaQOoUvGpOnugQx0gHGmIj1Lg4b1ltucPJf+wz
	 P8NBJEmxmroLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9C33C7EE2E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 02:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168645072584.5660.7865983401822102272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b4f8f034b380f26e013c4fcc339d020d6f007123e4d38c76c8d616c5c6559e
Date: Sun, 11 Jun 2023 02:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686450725
