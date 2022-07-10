Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127E810EC
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 03:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657424212;
	h=To:Subject:From:Message-Id:Date;
	bh=Hyfv0bU83y5J7291iCljBYjsM0DMKSQRmJeHClIRLGQ=;
	b=cxC4BpiJSWlbX0L60afVPlD80kHLFjMqHc/bBstD1qEHxWEK6XMwRgAUn/eD+fv7
	DYNGHYU2VQ05GJOBiJ6PUdq3xZu808GG2eeqowfZaRnZSWYkpvKiMjo1+wVO7nldlS6
	9cS+Q9cIcwfwGiCW9OoLdoQST5ig6Qw/bp9oReWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657424212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hyfv0bU83y5J7291iCljBYjsM0DMKSQRmJeHClIRLGQ=;
	b=aM3CPIGdsyHKcEOYXvtljduzn4RgHQCFX+LMWz06gSJk9xkm0+GrDRYc2qOoyaXx
	5E34/ZIcxcJH/8TnTvsnIDI3FkFP6F9+dTCcdcFziXzhY3m1etXpgB3EnH2rXBSYQoW
	kcdf0w8jBl2F5accpDCc+sqSSvD5QHwO+FOpuDRw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e62e7155-794587d1-2dfc-4e38-bde2-cfd672bdd16e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a7df2fd5425dad4d01c8c8696d897e49a3bc82c33c9e3746167a5a50eb90488
Date: Sun, 10 Jul 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657424212
