Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4043C7A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 04:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650689158;
	h=To:Subject:From:Message-Id:Date;
	bh=ba1BTUhV3qgnNjiCNhVyhfcU2m/P6JhPLY6wuadGsdQ=;
	b=Bqs6HIqcGSp/ptUZJLIYIJMqDiPBjp0LgwjsaCdUQ8+2SoyBTT+R8P+qZIz9JCn/
	Ff/R3JLizgp28ePFrsUkt2xlej8hzuAlMzG5++rnp/bySfBTx2rFIix34UI+QiEW/4C
	Y0Alc7gO1yx3vPhejuqB+/VjGEP5PP8o+vd9X2EI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650689158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ba1BTUhV3qgnNjiCNhVyhfcU2m/P6JhPLY6wuadGsdQ=;
	b=RzAKknrIFpUPSsxHIm190CJCnYNxROmRCePzQ2DyCmBQS1LILpvogEDkTes1dXu5
	bsGt9Qp61mSzYCWfuHprF7et7NLN6U8Thnfzo0BeJQdeJi9Bbvbt4nHxReAUkf/kthn
	31vyzzRKgZBUxZjDehS3Wi3Inufg40Tuao/Z1v1g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018054bdacf3-8141412d-c757-49d5-9b1f-5706e594f162-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a22913463e6754276b2cfc900f2a2a492045a2e6c2b8223374f7ec936a6c527e
Date: Sat, 23 Apr 2022 04:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650689158
