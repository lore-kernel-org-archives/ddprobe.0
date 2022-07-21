Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1589423BB
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 05:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658381812;
	h=To:Subject:From:Message-Id:Date;
	bh=z/Dx34MH8CcbleGsDyPpvXU9Q6NEIMZuVw1LDL+KSvg=;
	b=Wxa8MZlGMdq3mIm7fyf0+5y5L8deNJuZGKhgH+MDVwJCSe7+7JDJTsVdsdhQI4vJ
	ZLe4kWPLutOB1a9xFipbvA1zLHFL0t6Id/drdsQurKTvfFFgX7sN1E+GzwTw8EDuTWE
	kHrgH2IkdmBsQ4SoYB+8l5WAh/AKVlPHVwQRaESE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658381812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z/Dx34MH8CcbleGsDyPpvXU9Q6NEIMZuVw1LDL+KSvg=;
	b=KgZJPW5OjjR9oYCBwJGaQWR9AZHQmo5bIL4S1UKugZZofXmB/+5I2kK1s1AAAq6c
	enm7A5uzfWmyTRJ3sDUNYpJzBvhm/80nPpwkw/VP81Ke54+A/P4nbtp8DxgzeaRPM6M
	a7Osch3tn0PDdNb69bXRKSlvBbMZwurA3e67S9IA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821f424257-e4a87d00-11d8-4c42-bc32-538ab6455701-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: defec5b8318e26aa93e4621d3c4e083e301ff128f345b1bf4f478f1ffd9d2a23
Date: Thu, 21 Jul 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658381812
