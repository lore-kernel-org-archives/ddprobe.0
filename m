Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2231E63E
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 13:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649424418;
	h=To:Subject:From:Message-Id:Date;
	bh=k1VmWG0WNoV5dZcq3gjwsWx0m0KKeh3AVpfoC1FjkAw=;
	b=Kw4E1BSwAvEVfdo1U7gMDI1LezjCjQYUU4juFmdxvwDJEoWy+IkQ+koz6dYbCWMN
	2itrs1ANVL+kFfg87wL1dJmZKhTAQMohWQTegWWlFYZah+AeztTBaT9cs5t/AOubq/0
	1nKJDrkpvbul2yfa0Vg70WULCyMb+GUuN8/5VKhs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649424418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k1VmWG0WNoV5dZcq3gjwsWx0m0KKeh3AVpfoC1FjkAw=;
	b=expt7ZAim8JdzqDzFZ95KRj5U3zYWuOn61XC7X0apjGT6RtTLz2yCYRdPBLjT7ZK
	yjQlnSviJQ70//h3ua1rIOVSyVyuSy2F5CzinhfiEDNPC9ZngETb+W26xO3T4EBgA3A
	7RJwGXFDDtcZN7uUju9wVTFGWxhMVM+9GYFg+Sm4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180095b464b-a8c7b6be-ae1e-4765-8f01-de79ccc418c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 222c4c01ddbfd09217411ecb0ae5fbdd01e94d2487c5bcd258b998d68828474c
Date: Fri, 8 Apr 2022 13:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649424418
