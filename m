Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594973201
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660224052;
	h=To:Subject:From:Message-Id:Date;
	bh=gzsNu9d1G8tjtHsfp5pwnlmeUv0lBvjjssguFwPXpUM=;
	b=MyvC9rSYMMDn5S8no7600H+xEn5MGE7N5MiOS6Ntn5lZ+C2g0CvFUeUrtXYELObW
	UTAFP8UCxIyGTe0MTa69l3PMZNkpr7UJGHSPNDtqyC2hrrwEwIGr6RFOm0GsCxApBcB
	3CVmqefgTBU8BpM5s4UeANrzBPcBqB60JhY3K8/Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660224052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gzsNu9d1G8tjtHsfp5pwnlmeUv0lBvjjssguFwPXpUM=;
	b=FF1+haG5lcrz7Q9nWJMQe0HJh6+wDJSvs6selF2u/0H/J9dp3gjXQe9HcWeECrjX
	13kStZteZM9Z75OLDReYlVcRc6HqUGcM/lq2jdSrXoz7kmfpPvsP06JZzkRqE06uoIa
	Rr0f67HjNPe5jkhB8dfUj2Ul2Dc5kGTruADIXTDM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828d109d84-5c82c732-5161-4637-9e17-91704024753f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee1a4baafe331c301fb681af18025c5e14026d7eebf178a36a200020d918863a
Date: Thu, 11 Aug 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660224052
