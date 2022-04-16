Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D542580
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 17:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650130138;
	h=To:Subject:From:Message-Id:Date;
	bh=v+oSUh8uUOnf2e7VBAH5ci0KXsIFCdbaASfje6EbN9c=;
	b=KfayovUozyxPyMeZggJ02gYGrWbcjAePYo5q9ISZkeFuEwMqdPbh24/y/epgjFPf
	LYRwRt8vHw/g0HJ6Vt7f4BccEVQgDD05YSX3lMtDDuMsIsa3MqGUyodwuUb4nZye6C4
	/E8YLouusr9w3elPmiawRLfbYRrHvETKyRyZXyFw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650130138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v+oSUh8uUOnf2e7VBAH5ci0KXsIFCdbaASfje6EbN9c=;
	b=Wwh4bYpVEpJ02uVejRrvGedh6c1lM1qOIDp61znBfg4fAgVXfTWM+njAEV29CJS2
	UG60EBJ8Y8GqGXIF3MJidBGGErspZEYIyNNa7Cys9gLhmzRdoiux9nq1I/7F6KZQzbz
	ZFvApy6Z4vi73IBKYVwPCdC/XRrxDg6I4Rka2Nkk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180336bb494-e3d55df0-0968-4f6d-92e2-03b20f7d5baf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc35338385913bad67c005c676867495379e914b2a16b22930b2b17422036ef6
Date: Sat, 16 Apr 2022 17:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650130138
