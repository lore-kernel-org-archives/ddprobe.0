Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2B9E15A8
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 01:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649121238;
	h=To:Subject:From:Message-Id:Date;
	bh=1gv8ffoeRO9cITfRYjB5WHKEv/hyhmGKlZIEzq0KfnA=;
	b=kUUlA6LFKG2r21bh6wZmqY+z/N7OaRkDVzNnWVra0zwaXc6CwWvG2bMoCclof+4h
	GMODyu4fjAT0cxNmhHpAuf8X5aQ6EqGGbtNOsX/JbBGW5JLv9aPAEXK6ZLfuyRIDU2O
	itiThhWBuOL4lVV5l053nR/46QGhvSjxPUUTSAKU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649121238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1gv8ffoeRO9cITfRYjB5WHKEv/hyhmGKlZIEzq0KfnA=;
	b=b2dnjSe8FuMpjpZjqpRIuv8Wj80pclR25zcIaQQe1wEMYACCWWsbJGov/HKbCIOt
	BwIRVko4zMQFPV0imHmNErBUzAexUnG5S8NTXhTosRjaaCrqoRGCfqmmMgXC8vYUaxo
	5W1ceB/DmlSTeqakeeamTFAbuPZ+tX0XZ/Npbjco=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff7491cec-116e7cc3-9e13-49e6-ab20-7dadd77ad4f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e3731a030e9c7e9870c9a8c5bb9b637d7da0b74c81e000274bc0a776a04ec92
Date: Tue, 5 Apr 2022 01:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649121238
