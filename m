Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95D1F6AA6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 22:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655417699;
	h=To:Subject:From:Message-Id:Date;
	bh=UkPDslK+uV384GsvbylN3dl1wmb3wJYuiP91vsk/gSw=;
	b=WuPbWTWheRgiKKjENAnYf/TURkaFDFnnmqtgV7MWfAPaq/hVnOR6M18wzcgkv37k
	mZkLe6UUcy/0SFbjNTFXRuW/IOlnmjeWYdBdk9N5ykwBVTqjK1cVVLzq6fbxG1WTw09
	gHoiPj3/CBaTBVOu3G1AvNrt6ymJcv9vxDTODG9g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655417699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UkPDslK+uV384GsvbylN3dl1wmb3wJYuiP91vsk/gSw=;
	b=H8v5BD1zP+xe2xMUvjJOH3Zd8Xiyj93SzBIo8wK+7KupMT/bZf4Oj1dTcISqZVr2
	8BqdhEQNyOClD6ecQwuYqURO8mn0ursOOKutHQgkHBvdSoH8XsEY5HOGCQCijrKUg56
	FP/kpc+HWAV3+SLMQyaBCExAcUxB/Semiw3ZRqGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816e957b93-afb50019-36d1-4fe8-b9e0-94c6f6233e21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d451174ff0635a5f84d14d52d4a7a5ad6df73ca11bb0b700889471809d92af78
Date: Thu, 16 Jun 2022 22:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655417699
