Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AA37B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660882852;
	h=To:Subject:From:Message-Id:Date;
	bh=Lhaj45XY+q/XRRPLtJly5kIMWTUpDIyLnl6P73dYMr8=;
	b=guCO6tyIlOpoSo0ByjGvDdDfQAITCsUxDSGsOmyCv2jFm3jpLXPUZbgQHmo8XCHZ
	5W0Rww9Scsz3jK9JwmIUEhqkrKf7E6Kbw/hYB91OenSMpXvjiexyLEDNzCsTMqFmskn
	BcsanS59xee9OE39PLzGsDFJne5CkwAtTJHnhY2k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660882852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lhaj45XY+q/XRRPLtJly5kIMWTUpDIyLnl6P73dYMr8=;
	b=kRCoR3uNIdS41GyvADWeCEfNcWnVd3em2PgSstRwyqEzQIytzsVhBwfEZbDRmYgK
	82zsVRWThjpOWpklaY0HsfbQnrxjGz94mDHsCWO3c9iX3Sou9js7+RKi1prWtcFHrvk
	3uF3PYi8QtZui60aNbyoOYfvXrjNX8JoDmI2QFE0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b4551b02-e30abf17-3b25-4a28-ad1c-811947b1588c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7acc82147a84adbb713060374a69595cfe5f6d8fb6c0638567d632cf6a98c61d
Date: Fri, 19 Aug 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660882852
