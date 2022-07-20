Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9BA7B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 00:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658278612;
	h=To:Subject:From:Message-Id:Date;
	bh=0R3fHHduAX4wVmSnKBVA+2LdQhAJKiNX72ERnIC7S4Q=;
	b=PJoc6PZa5aRgiiYgmJVxIWuhXVBUGTO2dULKzKCpV0QyTRYoVCphPxyGrGYgoyLB
	bjGFhKZSjnQtrVHpSUI/vYV/JMox2q5b2mf48KDK8MhhY5Q4VEwhohrqMfP3o60lWkc
	5X8mTBaiIu3YecI6QBXASPhx7GSoHeXtzoTyYpvw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658278612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0R3fHHduAX4wVmSnKBVA+2LdQhAJKiNX72ERnIC7S4Q=;
	b=GYWsoE5ABHPyBr8pZEa/qhMsPEo7hi+ZDxB8knAjR6TjCSsTr1O9Qku5SP8Cgnjy
	piz1VHw2g4t/0AeAobSByzWm4k4LTzeaGr/iqgoErJ/TRbe1JnY5ufpzStNgarXe9vg
	pGIkDO2oVcdLGJ65UU+RAq8lZ/ir1cL3zxdIbl2o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182191b8d3f-b7f5bec9-7dc5-4926-9fdd-8add93cce4e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: afaa120ad9013488d3ea66caf359fbb90d5346924c974dc64f6c45f4217525e8
Date: Wed, 20 Jul 2022 00:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658278612
