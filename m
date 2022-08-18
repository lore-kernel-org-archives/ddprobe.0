Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AC267B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660802452;
	h=To:Subject:From:Message-Id:Date;
	bh=VRhSa4HL7rbuKWb+y3WaXvC6aPgH/Xxaeo0wmuwcsno=;
	b=Va99Sagez+ACncLG2jpkE1ItqDQvgkyIPFNUv9+lM3uFIoXvbQxaykd8/Q6tmoAt
	NVY5bi0/U0eT65Ipg4zjXNlOhYUl/13FRYhadjdlK4sRjvvYv0W/k9WRkhznkP4qZ/X
	cs+votk9au0sTwlvZS42GKf+C/L5285LgoFrhpjQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660802452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VRhSa4HL7rbuKWb+y3WaXvC6aPgH/Xxaeo0wmuwcsno=;
	b=EFaA3JJ0zlozdOZzq6cWQpQNsaqIeJVbKcVpIEtqB+z8rzDDOKE35mGCPtRgm2uj
	cksZc21f0zggRZDgnS+TNrrEsvb6LCx8WrAZjLGHCmMHyr4C/2QSt9DPltS5uVqQNcg
	Bc5Efh/YhroI0iVwQecDyhzCYpryZyjZaj54QhJs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182af8a4d19-5bd3af9f-c4dd-4b17-bc01-28a4d7f011d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b709ffc4826ea884731294182a23d0d3129d9555657f2b7523e3b4b3ecb14a60
Date: Thu, 18 Aug 2022 06:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660802452
