Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B97B1869
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 21:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651268218;
	h=To:Subject:From:Message-Id:Date;
	bh=I3VgNjwLT0+hgmPaASe+HIdoB1W5RnbTuDffxBy3iwg=;
	b=PwFUFztglUh3ypAU4tXKNKZ05CXo9H6PMvWzEU5E/BbjI4X+5LUkza8uWAQkzB+H
	pm5g0QTG1epZO9h1IRY6rLwKIn0r7m8x/KQKDfbmflmDOff5ijFs+L6GCcUqg20aNax
	OdAJPTZN3p3FGfqsY+jE8ZirNoaUnKBQyKCy4PXg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651268218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I3VgNjwLT0+hgmPaASe+HIdoB1W5RnbTuDffxBy3iwg=;
	b=jR60BJGN8xZ4pqkPzPtl3PCRLLIzsZgaevIpyhqnmkIdJ8YthjRUiMoVlPPpKu7p
	JXSU5T3+lSexo/nYZXV8tCF0tRcjm0IOFic9PLfUazdncPj8bDbJCNDlj9IHWiVh+B1
	pTfyGjcOJs9P0dRlIjIuVfwTBO3md+od9XFMqHtc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018077416dda-90275253-cad0-4c87-8bea-4b6255249f79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18ceb9c3c3266bbacc27786116919329232aa8a2993480b5d95e62c65a1930d2
Date: Fri, 29 Apr 2022 21:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651268218
