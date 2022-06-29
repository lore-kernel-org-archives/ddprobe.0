Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2BBC7EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 07:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656489412;
	h=To:Subject:From:Message-Id:Date;
	bh=K60qu9e3q1xFq5nFRwSTgNZFAOjdZLi89VPSBl3V/pA=;
	b=W+gY9fwDfHNhDnVZv/Wg4e4NKSlACzD/eMFL1sSMfinMqGfpTibAR4FDNfOSfNPf
	Gwk1rP/zF1ILUid04NzoSqfcBnzt27hmHHOMnfK/rIA45O+/cULQs87B5ykNvcpwx4a
	+dy1ZQ8s5N/HKsW73RXtrPxeoAuI/Um9Yh5eaCvQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656489412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K60qu9e3q1xFq5nFRwSTgNZFAOjdZLi89VPSBl3V/pA=;
	b=MyOOHa53YKOwFSIkiajIlZ5YGS51/K4NzTunYz50zpDKcjajNLYaX7rirKl4lwaF
	qCoVnjsNDz/ntg5Cqu3Udwiius8U8AkHqwhOLOL+me+4wkMTrmEJWSF2DHHZt1irHWY
	GUBk1xj0iCeM6HOujiITHS3O3y33i1WgtTUzZXH8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ae7686a0-57a1ba3a-1959-4d32-aabd-90ecfb8afcc0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81175bfd1fc6be81cd710979051f5ce6ef05eec9d8fb5322b08d1a732f97e68f
Date: Wed, 29 Jun 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656489412
