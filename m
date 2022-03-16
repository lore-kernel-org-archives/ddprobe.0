Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D7F27A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647426984;
	h=To:Subject:From:Message-Id:Date;
	bh=2S3Cj6CCNNMQJ2ipYW94a4QqWZ9adZTCvANZTno2iHw=;
	b=TUYBTpNi5I624wBpPjrg8EQYpznIgUMT7sqX6DGdSHvDsLFGpn3IZr2LEyO/tfBZ
	LAkOn0NLa/2y/TDMsOhdvrachR3/P9csU2kQU6dbU+UZMhcjgpM1ibjIRfas9rTbZIk
	cP9mtSnWJC/sRFPUtnFMwm1LL1jZTMvzxDb5U1uw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647426984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2S3Cj6CCNNMQJ2ipYW94a4QqWZ9adZTCvANZTno2iHw=;
	b=EhVmymPlxDZH0fjIAA4adkELEDsSNlzN167E8PUiLa8xAJZAebfdjEfwzx21eblb
	lNJyY3mx0qNH1+jT6+rhfdcA4mdSfhhkyhAipYLrIS8reYfvqCDLJAzA4Y0r69Dx7P2
	z6RFCSE01cAyb9wrawadeWppqXqxjZl+EXt6T+tQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f924cdb14-59b28a68-d481-414c-b050-ab87d2611e66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: adfed65b4e220ee381e45d0c633cf307eed76261d4dbc75a51b9b816430e3577
Date: Wed, 16 Mar 2022 10:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647426984
