Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF8C97F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659429053;
	h=To:Subject:From:Message-Id:Date;
	bh=VVviBrfn3AmtRoa0ntl2800oPCuj/GHssRaPI3dR2cU=;
	b=HcghBRCIJP7LBhlfNCBKt/kadU7XP/8d9sxXpkPIkrIphHa7zgOXu4ea1V0Vlxix
	WtbA09Dp0L/rGJ5WiWX0sETUjSEGGI0cxBrMbuUTgcaS8AJvY6feic3Un8ZG1b0Fo6U
	gTlWcOoZCx504PI6x50UBdAaN/Wuwfdp6X9mF7bs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659429053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VVviBrfn3AmtRoa0ntl2800oPCuj/GHssRaPI3dR2cU=;
	b=ME26+rLMg0at3aw3cejTqpveiepXM3WkuqKNnu3QT/UvoBP1cAsBOU593tbp5CjS
	Q5Agt+rfCY+7D03GaULem5SGW6YiCIF4AfXLv51XNfr8kWCn3Mmxuo91dIXmJt7Kx9l
	B5dnQHfcca2nMzgDwDQButAb6RyqQ/vu11kcIsUs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825dade078-0802884e-4a42-42ee-8581-23a6896b6e81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d04876159a468b314af9b6577d303c10a0e508368973ecb1c0f7bad6a733383
Date: Tue, 2 Aug 2022 08:30:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659429052
