Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B20D7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 05:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648098058;
	h=To:Subject:From:Message-Id:Date;
	bh=QGaoZuHwDG7amdsSjCP1WdEoeVw+LRkHvF/L8iHguTg=;
	b=VAnCkYqb/BoMxXdkTzBah6wGJQdoFJG+vEqsH/qjtTGiZNIqRdP8+6RBnY4u13yM
	0yjnOAM/TxxRn1EDU/ZPdleYT8U1hpHKfPbSiISTOv9spIYH9CX6wk+yOcl6LAK7ufI
	qaLLOum+hzXpIap1SQA3IgL2OjqtH29cbvECL/WU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648098058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QGaoZuHwDG7amdsSjCP1WdEoeVw+LRkHvF/L8iHguTg=;
	b=dw4ShvXgugejvLzJOdTPWptBWup2SRxgRFdQ0FM8f6l5CIrekln3XxebzGNNx6Jp
	6dSMEo9UYo2XI5vgaR87giN8unO1FpjQD97sFmpUyy6QBxO3zIc0FUEV19Plii9cS35
	skmqS7A6E4t95FPT66XuBwSLEcvLhgbfvcuDeFes=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fba4c9ff6-7662c467-c5ce-4f10-a4ec-d31df4598e9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67bf8a1f2ad559b8b1a6ba1fe023ce77ffbb0771ef1b3b32b9070dbe971c87c4
Date: Thu, 24 Mar 2022 05:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648098058
