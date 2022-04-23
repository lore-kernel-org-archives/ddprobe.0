Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8527A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 06:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650694318;
	h=To:Subject:From:Message-Id:Date;
	bh=CaYllj5gjR4uCsczqIPWQTKbunDXBXJdmgJRHemixW4=;
	b=immiWJcLoJA3gpbLnpUy4GyQ/w6vFTG5t4vAm+CxHj0TlGKZRkMAy0V/dvKaYycg
	SHY5A3EJ7UCZEkZNNgBT9NKuRPNnB7RrTaBGI5B9GbWB/c3CI4tnEHeAyIwVJWLQpPl
	kBUxmnHbfEDdEtXAxucT+D21UYrGWeVY2NENa9p0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650694318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CaYllj5gjR4uCsczqIPWQTKbunDXBXJdmgJRHemixW4=;
	b=LEAGKg46dJOXoKiOwnR0q7whtN+b3Dm/dMaAmk22QpTkonv4zjTmMndeooHge17s
	VedKHSU2MR5dkuFjIYuFFOxhpoIhuLucxkYI31fI7fBWNSbdfIFXXBxfWNTSEvbAcR8
	+uwsjDoBkrCRI4o9oSADfKz4VT8gOiIinqmhRsps=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180550c68b2-5fdab935-f1fb-44d6-8282-d19e70c8669d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20e696f06c93b848bee1b79a372d73ed8cc7ce5eaa39f8ebe34a526813bc770e
Date: Sat, 23 Apr 2022 06:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650694318
