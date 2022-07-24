Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8842F4B
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 12:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658665612;
	h=To:Subject:From:Message-Id:Date;
	bh=7XdPaSYZKHnC+X2a2XE1sd0BBHi7UyFnOnPb0W4OmIU=;
	b=cdTxz/KGAXbo87L/iSvf95VWPhe96bQ0PMCb+UDJll/zykWpIc3tq+VDFdwDgEF5
	h1ZGGakyZ3ari/Koul1Ik8cc2gKbPfpfXAewd0bKAlr2BCgSRM6nRqv+TD++NjFuaOE
	eBHc0xkuLiIER9FaYUEwau8blsEuHcj4zD9a5nrM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658665612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7XdPaSYZKHnC+X2a2XE1sd0BBHi7UyFnOnPb0W4OmIU=;
	b=Qee75T2XSDEs2UQ5dYAhCvgHZkBvCBGm05ymXjyHhV+UJwKo+G7dlV6xvIzJaEsZ
	mZun9u59xMm9d2dtNpq/GV4X0hYKjmHsTDYcgM4a88nyMtB5bFELOM/EiALS4Qncha0
	OgwBxnSq2f2lOmOsC2jLSDwJLQ109twBYWRtliSA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182302cb3f0-c678de47-5700-4a52-93b9-bfd6afda9941-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e27bdad15b39eec0d59653ea71b7b2d0745c23bcff8e8ba05281f2555672ce7a
Date: Sun, 24 Jul 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658665612
