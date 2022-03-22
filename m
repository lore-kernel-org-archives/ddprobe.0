Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F80E7A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 01:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647912984;
	h=To:Subject:From:Message-Id:Date;
	bh=+aOEeMhAwdPECSR2jk/wBJMlf8XvJ83ljWAM2rq2XBI=;
	b=PtTXxYq5fBYKyb/wze/emGY9836o2Qeoi76fVdu8GRgltoqitkRvUzGnbP7N3Vki
	nnYyjx5IGA7etfbyIkU1seLhy69bclsaGxxejWXoyPyecsn1nJMICInmWU5B9QMP98i
	uDH5OZIgypDMo8myeP40COuZ62rDtTzOAao2lKXs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647912984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+aOEeMhAwdPECSR2jk/wBJMlf8XvJ83ljWAM2rq2XBI=;
	b=Lk3cs7alnMf49uD9Bn8NwdiSQRPgl/XZgAHRClhLQb0SfVHB1Io7VvowlVUEgXI/
	geqF+VEbRRiAp1B7ipvQD8IFDj0vc3Ulk/cnHQLNWE9tzUecLMg883Hoz58PyTlMrVX
	wHA5zydZxdi9fIIg1zhrjdTVRNIU5cFlIgwZ0/o0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf44a0ae-4836244e-cafd-4a24-a164-31a48d0aaf2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11fec85ebec25a46dc95376c9c5013e25ce7ddaa0ca2990814f7f27e33b15402
Date: Tue, 22 Mar 2022 01:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647912984
