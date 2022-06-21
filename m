Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6A0EA4
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 10:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655806619;
	h=To:Subject:From:Message-Id:Date;
	bh=tLtNCyZcRtsYIkPimw/GlwLpBw8w41/yzXvsrcWJ+yA=;
	b=jD/JDQbIn6yzCHkxVbzy1y5hIDyYSGLnVq8WFslrNCyjJLh1QbPNvEvPWZa3Xnbz
	8c+WJ53IXQ5RhGZEUVczx3hmwvENlilz4foYqKHy6taqQj1TcoKOriH2u6nO38Dg42K
	6QuLFWwfGVvwfacFVMBUp7y+q5pnb6BgzmC8/T20=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655806619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tLtNCyZcRtsYIkPimw/GlwLpBw8w41/yzXvsrcWJ+yA=;
	b=TQS/6bJtEGGFHBhfR7OYsYV8TQAUKaqiE3bgACC2f1NJ3MZxryf4HISkig1NitpJ
	5NaXbcUCe/ZIB5bxaYKU6VzX+jPMODnNJ6fdicpVmVC8zyb9u3kbVoHtRdnCo+TS4Jk
	cezjP+MYhmSHNUf3vHaGd2HXV678klK8J+WAd4WU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018185c3ee78-f4163392-d4b3-4ad2-840b-ccad05e37c2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d15432286ac4f216e06c5c6c9b48eeff56a3246f3a47a84e4b3c38f5a07ed624
Date: Tue, 21 Jun 2022 10:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655806619
