Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70BC47C
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645800385;
	h=To:Subject:From:Message-Id:Date;
	bh=a2fVljwsglJBScz7KdS43rzFe5aJmDZg68m3BKqA+ks=;
	b=SX4Raz705/T1Cd0yOu7GAfGkRxA/LjGSrDuZjlShkCuA62UYqE4C/dtP406BAB5G
	tEjIBhwtSWKP8FB1AjWKtLEFMIPVIDmThw8DQXFgBU6kQupo54CGprjuLxZgW0SdMrS
	KRBXFrOR9iMI1afMqBBzJEsN5mjNyN6LepbfbaJY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645800385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a2fVljwsglJBScz7KdS43rzFe5aJmDZg68m3BKqA+ks=;
	b=OPpyvcfApt5h3FYweiTP2H6JwVAYEVChIc+lOFBDRIAKjiaTspwn4XjIa9KuVg35
	+54NPlyPvm7R6MR0Qb0KKQIJXt8TcbF5KX0nSIrOm5oYoDaBjQIDHRmIKT5wAK3eei2
	4RtS1buBCdsF2fwrvRGPbOTtSbhZgMWw3R88+0HY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3158e922-6946aa0c-cff8-4324-9ec7-0c474f3466e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 442bcff265c7fe0a0d5445a976a46e96334906aac743e41d9e6098018067143b
Date: Fri, 25 Feb 2022 14:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645800384
