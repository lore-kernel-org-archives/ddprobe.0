Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1234D10E8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 02:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655863859;
	h=To:Subject:From:Message-Id:Date;
	bh=3nMflFc3gpZsM7eYpwEwP1y85WWw0S1af+GLDaogtJ0=;
	b=Kjxxer+lbpsdoo+6E4cCVYyPMQ7tDINc/uIZ37sSBzHTsAnDFjZpIJtVZcTJ2/ly
	Etl0sG5XCVmNwqmkEKTw3oP12Z5z4ep1HF8Cu12OXTV7lchiHyVUJANL1gdVhlGbAV2
	8BbmwEatMUIPFrdTHySVfOnXgRzjCbbSEE1Yu1EM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655863859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3nMflFc3gpZsM7eYpwEwP1y85WWw0S1af+GLDaogtJ0=;
	b=PSjXuqF6dyGZcrnIJfEJJoqkr7FnPWNLjHIHLeIobQnskHvwwXOFNudZucCiL/20
	bASZTwQUl/FHxwpdIF/iIPdWC5vBco+FHjKz+qo9hPjmLHNR4RX6CMXSzTFt5I7M6KT
	vnp0eqEsLJsIRRGjsGBmyy0h3JFIqlUZgr1Qg9pA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181892d5851-ae2bd5f4-5c83-4aa0-93a3-e3b82eb912f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f58cabf88af49dfb2780fb32f9f74b7ff93a9b6b90a9414c64de28cac027c9d0
Date: Wed, 22 Jun 2022 02:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655863859
