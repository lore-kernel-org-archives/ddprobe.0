Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52EEE4B1E4F
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747282194; cv=none; b=X+7ZczqDXjPjfr4PcUFPvlRvlPK4yKARPmLz9Mu8GpTPQSdzRmnDq9ZcqiSftYXxQMTQHANHeGdaiTT8Ry2Ajz3UGakV+0H23Z4m1uJH/foGy/9W96exPrqFat1a0ohWVnaiyTmHvMN6WOY/bONPYMhezmA8gDca1E66QoUi/FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747282194; c=relaxed/simple;
	bh=4rDNnbqBXL8JG1HAO6bZutYwjoAN7tMr1iioS3+Bdic=;
	h=To:Subject:From:Message-Id:Date; b=P9tgQoMlnyufBp1Fb6poFs1LZYhDrOHCNm0g/95hZaPZovNKWWumHwl4gGDTDmxL8Pl+cy9Zg0cCKhB79T5x2SDMNbnjyrmd2nMo5em5l5uA1eXxeSG8hldiZiq+snUemmTGCc3/5cAlV8xpFW+onogffUWBmLjAqfequH4L/Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJN3oI3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJN3oI3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F72C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747282193;
	bh=4rDNnbqBXL8JG1HAO6bZutYwjoAN7tMr1iioS3+Bdic=;
	h=To:Subject:From:Date:From;
	b=KJN3oI3PnJud/UGWbjYviovMDjwe4I/oL1M1MFUeNyIcJf0RmOLBJ8Gq3LbJMgK67
	 uNrfrWT+gkWLy5TsRyrqJQ1FZ1u+4zUtZ4qYgbRmupVBq8EJGTGH0JYEN7rEeQfCGV
	 JynUqX4pjAsF9nCi9U8goWihOGCzP3WHJ9hl3wqvv37qR8XyKdENnuQGbQbAVuL+H+
	 B9B6YPJxmcMVnjBzItCaGNzLuI5aPvNKCH7SBLBcbrCHPez/OYLBa+0NbGG49PCE6y
	 bvsjPvbzLM32o7dsYP7A7NaZBCVwEiIlj+UlfDrCEFtf1Rs3U35wS+t+arC9liXgSA
	 zPym5ZbXyG5UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A72C3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174728219357.8369.9542352202269895374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1eb223bc5242fd61e2f3dd944355570e09427dec0208d536ee03b945d9d7e44
Date: Thu, 15 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747282193
