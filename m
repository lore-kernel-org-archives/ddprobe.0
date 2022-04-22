Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5292C80
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 19:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650656698;
	h=To:Subject:From:Message-Id:Date;
	bh=Kxnc2KdGKNXHIFQd13DU0lcV1eHxfrbItn0UESMusyM=;
	b=D/+gEyXN42fGTZ5M/gEj/7xqvI4aVlWEHSs52O+bHccVQJnU9NE0KZl0nOgpIrsI
	Ynvcy41q9LxW0NkU9hdHbuTNJQENvEgpMGoWHTawvhor89DauDXY0Cf5ayjdwV7qG8X
	4mRgk4Y21JBvtwQZ8igMSrejLdf/Ze+bdEkS1o3E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650656698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kxnc2KdGKNXHIFQd13DU0lcV1eHxfrbItn0UESMusyM=;
	b=kuRYECC1D/kS/aB4aC0BEmovi6msmTMOiQ7PrYj8BB4K6hSLQhtCEHaCuTVQTkke
	WJGjUiPRQGEk6Mk6UujfejGKuNkqApTQCr9PRvZTkvVwIoAkpQNx7PUTmBveg+1jeXC
	Kfum/wKK0WD+Mfg5MBg2nPRd8rigPy0KctaSlOMU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018052ce5fa7-080ea488-8d1c-4213-b61b-880c5e37a577-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a3a292013a114d7fca584657a1cd7b883ea0c6ab87651d6c13d86cc48e797ec
Date: Fri, 22 Apr 2022 19:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650656698
