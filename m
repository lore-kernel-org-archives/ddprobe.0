Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696D1468F
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 00:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647391884;
	h=To:Subject:From:Message-Id:Date;
	bh=Bp/zA9Wn6FcRhQrZkvjU9zCSXdcOgKDXkxixRyOJ+2k=;
	b=A7jZCVvnyZpPK2t/ySsKuWeKfkS+L1vWBTmnfIwCF54XerTNmDNmety0WN4zZ1PU
	4XPJd2mwNK7s18v8sBPYPVGI/gF32qeO6u2qkhttdpW+XYxjW7wDXMOOq2aPY2oZq43
	LOBH7JZxlDfuvQKP/DOyiuqXDihJsq9xrMmiTlQo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647391884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bp/zA9Wn6FcRhQrZkvjU9zCSXdcOgKDXkxixRyOJ+2k=;
	b=hxRk6tM/fj8cIv/vlKSJta4ZvrzlwYEdsNkIqwfz44CBDljBRH42tTZI2C604w+c
	3Nv8lpK/ZZAxwg1k9US3AqyOcC7MS9MBLTxYNt0aegA5+AqwEw60fKZ34xVFVkFIF9l
	jEhb2UByz5MXYt3T1GOAcRH7NgSOFXjLF53iYaK0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f903545f2-a7ab824b-3d08-43c1-8b25-b4ada47fe207-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: edd9422755186a0aa91b7347fc94556da10239dd7273a898b2c9a9b965296a57
Date: Wed, 16 Mar 2022 00:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647391884
