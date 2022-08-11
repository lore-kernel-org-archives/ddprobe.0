Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53ED833C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660233652;
	h=To:Subject:From:Message-Id:Date;
	bh=Mcfbjb0FLSelnaPjiIcPgN34DrqYapZFz3DNSFI1FF4=;
	b=D5/5mJblBUYwmy7zyBVKqmTx4oHWvu25unugMFQ4gEbv2SKgAr2DtiQPO2V1Nn9y
	4UEn8haKl6xB4Jk3A6iGXJ3EhtKBZPmyb0IA1SebpnZridQK/F9kUgoRSVqtE+xujot
	r+mwTRQrpyqC1yHf4dHGSQcaDWySwbh8KjEZY8iM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660233652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mcfbjb0FLSelnaPjiIcPgN34DrqYapZFz3DNSFI1FF4=;
	b=ZSZtdT81iCme9qJFxgeqXoQIcFfxqJA7TS7fKAczQVLBcx9zwPLpYpOAXHhh5ldO
	QMrIVJpLULWJXWMDt1uJx3M//VfHcFA356aN97AgdHtDzAVhqodkYIuj1lA3KNR0i2m
	TWB5BnjQ55+uN5d/hjD8ID9qR1bpBA56f0n+kF3U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828da31934-798abf15-13b0-4353-96d4-5d8deb0240b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5551a60c740c960aa9b16431ee5cde85b59019f657280c650ff99d5f633d2070
Date: Thu, 11 Aug 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660233652
