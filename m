Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E052F21
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 12:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652357399;
	h=To:Subject:From:Message-Id:Date;
	bh=6T3etAkxu6HaypnFFR3AbjEYD67pIuxP60gach80GcA=;
	b=Av93g5PyWV+U1S0yFbJTFWWAPsJNlB6UR/dnuAIkl/bju3mWlvpWBWlbucOShi+1
	CEiNC4D6+pDV4yKOmHVz7mwqcIaSYQ01gat+JR/cXnk4QmUuJTBVlRDg7k8rMrDC66h
	2aZOcLktiY/j4hzIPaKEVtQkj/KFHrrSmGC9+lro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652357399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6T3etAkxu6HaypnFFR3AbjEYD67pIuxP60gach80GcA=;
	b=QNodgKiN4KXawL/y1GSFh+kgSZ+RhA2BVA5G7RNEBZuEzwjErG3MrvBvA+ScbwQC
	XO1cve86AZbF03ZxQBGiSf3NjtftrMellAMEuBdNmdgj1jz5AZefW+LVQZrUShiLsU5
	tliJJDtXW2EaybXX9WiayWQ5cq4HcKyr4BCNYyXk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b82d02db-75025fe6-8113-46f7-997b-961c92539da8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cba9341b7c1b78703bbf60faab80d91a2aad990275ef788441fae95b1dd7c095
Date: Thu, 12 May 2022 12:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652357399
