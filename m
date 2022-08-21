Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670F536D
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661049052;
	h=To:Subject:From:Message-Id:Date;
	bh=FP4NMEbmtu1eu59NqAwEhMp+apZ3PXWq3TBM4qjtUA8=;
	b=dxHs5wl1auk6B47D0QyreFsv0Q/4gj/xRrPOiBZTMqSeO8wZEaQwmExgUtk+YaOh
	f5/aB0ghWOJyaHuJ82JSOkrkptc79lxinBB5S2yW4YGjzx58vs/FeKKMX4ULiPXA1Do
	R1MpGOpt8M9mq7L1FDA+BCqvovaVDxferrQZnNng=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661049052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FP4NMEbmtu1eu59NqAwEhMp+apZ3PXWq3TBM4qjtUA8=;
	b=HEnmrhYPVRLYBgU0nx65PPAdl+59B8PdlgHAHi/6hhsEqVeKITBWXa/jGpYAOiCG
	/rBihopxfVR5b7stQkpeRRJrXJCThaUzeDWtRnGvo+It+rE/hE+bs7WuD5tQj4Ke4Ep
	aBS5EH7S/shnE6h4aFdt7kN68Gju1o75nlTPjn3o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182be3d1d95-b6947dbe-300a-4ec8-be49-47a52a5e3ba4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ea95dea0df6f8c10325e4efb3c648bfecb0a1cfdaa6ae11858cc84fcd8919de
Date: Sun, 21 Aug 2022 02:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661049052
