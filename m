Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B8BF2F35
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659645652;
	h=To:Subject:From:Message-Id:Date;
	bh=qqMv5lsU9syPqXlpIIhLrNvZHdtPOVhI6CjoOS+3MaA=;
	b=R5K2I+aLIFCUKLB/4wVECw680RpSNXsIsZujg0wo/p0ojNO+Z/7WDLhJIMzxwzH+
	QRFpzIUnE1D1RqGPR5aH3V5jXlgcfditTVCeeXvt3JnN75OzB1Q2b2/eUT/CW93dISD
	htcUw70lfzZ4VRrKOsf5gjPfKEarzm/h5Wm0U3ik=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659645652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qqMv5lsU9syPqXlpIIhLrNvZHdtPOVhI6CjoOS+3MaA=;
	b=eVu6Y373WuuJFc++Yfr+Y/xETvlW1+q2tXBxpyhGAsrSk9Gzu7Q/EwXWYAben1V9
	7A6AjgwiWprPGH/V26640KaaW2dlkGOPazzBhurdvNm11crlkJFcBKq0bFmjMx3AKXJ
	Djucphb4m88d9tTvre7ui7gNxAp60CPkOPT9j4WQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826a96ee87-2d8a0434-c015-489a-8a14-1a85726193c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5da26c893419ba8858bf65cc7aeaf1d76d108ab20709c79f4bb0fbc0bb98440
Date: Thu, 4 Aug 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659645652
