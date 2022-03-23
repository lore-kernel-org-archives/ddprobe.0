Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 069C6A28
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 00:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647994885;
	h=To:Subject:From:Message-Id:Date;
	bh=DOXwAXLn3ki2eFEYmsXfKSvO2Kwhbpz7M2aSgmqZgFg=;
	b=m2W6CQYKH209WBy10+on2ygppvtZbNv+++3QdaVszqYNb0QQHkJ+Fn7Q/mH3DN9T
	VdVsbSRF2BPNSlUwm1iKArUA092DVO7o+MgKma81Fj59GKm5rC7XqGtjNCZB5XWuFmg
	xjaF1t4XteephF+pEstZTpzfVVQA7O4x1ASRYSa0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647994885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DOXwAXLn3ki2eFEYmsXfKSvO2Kwhbpz7M2aSgmqZgFg=;
	b=YQQNcX2kN+9wROgDSOW0W7ZOAQ/RW3H1b6zR6JKOuEVdTMD1+DqYyNft0AUomAtQ
	raIGoY8VFFG7HTnUJ1ANIMcrs2NONQkJ8vqY807CcUcaJz3JZR2J2KkJKmtvPNXGYcS
	pUGaX2XQSMIl2O91BtWiVG4wPqGXUBnlSi/Xtv0A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb4265285-d3f2e25c-bdd3-41fc-acb5-9bbf1d866482-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37e0123a30fa7f19d1a67617e19270dd80d3f0ad8791ba3fbf56ce3c2b242e09
Date: Wed, 23 Mar 2022 00:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647994884
