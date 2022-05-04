Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F51A3D6E
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 23:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651708198;
	h=To:Subject:From:Message-Id:Date;
	bh=SkiuAmYeJufgT8Aqkr12lZmakf7lZM8QDJv3o3lNbFs=;
	b=kuF6+FDy3iTJN3s9mjguYhEFfg7RJ4Zl6V3JRlPQ7RDDCYTLU5BXbUnsX09ZAzfV
	kUgjkWLPN0OHYeAhhYcKh1KYq528YKWj0u1TpwFmdK1BnBnEgG3NG7fJuk+dA3/TpN2
	uVQdp+1OUGo/4jb+KXL33R7sNuMKnihRD3zzwrRk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651708198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SkiuAmYeJufgT8Aqkr12lZmakf7lZM8QDJv3o3lNbFs=;
	b=YY7B0mKFoIgQJA/WgVKO0QykgkRMZ1j7u5TqLYCX1NPIBRUwGuCq13YFeoJY/wTB
	uvV6EcUMXrpEDDKPK3gsT9PnZ9pvFyh6HWB6eRtN02NOGTlVDUVg7DfK1fnkE8ljYSZ
	LTAwMG094RYPSPyTS9BMolymzgd1W3mjFkKDuF+M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180917afd72-29304ca5-bd43-474b-afb7-1d6473461cd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b33baba25b4e9469ab30d20315b6635ded193ad6e72bd71ca0f0eb885c7e97fc
Date: Wed, 4 May 2022 23:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651708198
