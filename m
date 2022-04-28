Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D041EC2
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 10:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651141618;
	h=To:Subject:From:Message-Id:Date;
	bh=Kaq+AenHxO6cvkALBJ5GuoO1y4tiMGvepx1vmnPxvA0=;
	b=Fmx4meT5wNYp4vLBTZegiDpTl8HKPRmYXj8XVkUrc2rwJw5SXfmbxaR12tztFEsk
	BLQfUU67xYEN9PZIOJSV9FzWheBFNz2+vk0/UjIGuUbm0kUYZxXYT5xbHA5XGJB3b0q
	MUuVDHDFxWabs+oIxOEa8hmlBR0Ojz/51r/zhtYA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651141618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kaq+AenHxO6cvkALBJ5GuoO1y4tiMGvepx1vmnPxvA0=;
	b=gzvAgkesLdm7X7xH2hE9PbvDXUBue9HdMIwgMHmGVuBAF5yCZpaaqEpoe2m6cCWS
	swDyRultNuljbNBQYFm/8vSQzx/OUHYxWJ0YDjEAQNF/QkzkV/v4G/pLlW9qAPJehKc
	ZKtSXympEhThzIw8F00cUt7rBTa8rOE5/3DV0zy4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806fb5aa51-62d3b87b-d73e-4fd1-b818-77817fb84a85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4997afa26d7825bcba69013f2e766ef48f1be73146676e9d6d7aa1fe95c43f59
Date: Thu, 28 Apr 2022 10:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651141618
