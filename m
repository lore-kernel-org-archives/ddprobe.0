Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D472C5A38
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 21:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646946685;
	h=To:Subject:From:Message-Id:Date;
	bh=gy0ofrBy+TuAoWQnXMQp0uh90/9/TiNmGvSBvjhOUfA=;
	b=PSlUExxOwRg9eMGZizwf9Ye1PAF2++prf0IHFf4VMr5C+QhAdlyUKnjfenU5tZRo
	jAna6SsWdiGNOo1UigTV1WiAV2taZTHUgKlHbfI8MlDRG46BAIN+flBybHDV5slb7B9
	1T1917w4kjNMMaOXQ7732yi1cVw+WTkhdSrriA1E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646946685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gy0ofrBy+TuAoWQnXMQp0uh90/9/TiNmGvSBvjhOUfA=;
	b=LosnT+cuqgj9yShjnLQqtKCwYze7AL26iXq8UtUnPcvtxgpc3bNXKzAIfaRdGhHf
	t2uFoEDv7NRpzRBQBc6GWoa9kMizZ4Z/NWVGB1flFZJ8sjgJcMSyri5ENtwP7nENOF8
	87WaHWvGWsynpUiBHtyGKAtvjiKqiwNlJgFFl2Qk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f75ac0f99-077dc865-4d8c-44c9-ac19-0d903f59e4e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6612e97fe231f11f01f14f0bb6c46fae6529e07ebb9ebd8d50ee81083ee9e9af
Date: Thu, 10 Mar 2022 21:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646946684
