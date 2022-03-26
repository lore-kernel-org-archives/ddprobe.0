Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266DC7E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 05:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648273978;
	h=To:Subject:From:Message-Id:Date;
	bh=pYHRZzu+350pSqem9bdQGwYYkQZq31ZwMd5eGAtiw5w=;
	b=My7YFKJB/vFVqkqEOxRb6agtbDxhLAwGOQ7KGL2utKPmZhLr4PKRGwfEg4dV67cx
	aip7SsV4Hfd+dpWMicyEPNLpL7L0hl1X8DFyC9rcH9A82GCRsyPmw1JpB6dVQ+9Od95
	nVt4xXQgjXG6fPWTAUdacCZWtIrNsPFEK0G2UaDg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648273978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pYHRZzu+350pSqem9bdQGwYYkQZq31ZwMd5eGAtiw5w=;
	b=GH/R3XUc62SIBixGlExtstsCvSlfh+G3Amt6LIc1Aw4x230GBNjeqGqHWoeL1tAM
	eVYQQvc3lZ3zlnTQb0rUslOXTs7UtDBjW7en5YjNvd4lT+Y5Li71XtKMegBUDhxpVFz
	/keXqoRJWZBDk9k8Ae/RyqTheO3DvNmVUs0jCJM0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc4c8f3bd-f6904f9f-4bb3-42d4-80b2-0918f26dcf01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77c76dd8c415189e9e149c55b470745e54868eb63bd30fb1d963f7105a274bce
Date: Sat, 26 Mar 2022 05:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648273978
