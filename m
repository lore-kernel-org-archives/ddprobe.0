Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7317A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658996452;
	h=To:Subject:From:Message-Id:Date;
	bh=gu3oibfT9PfGqrwxqhZBPRXJ4CjGoaDJHLcQ+UGTrbU=;
	b=JGk9k3SYkrxs2dNLRo7aQTfQQ4+VmLj5dhe1zhxHx0j0D4tqHoRNmKIc90dN0a5i
	PvPxQipGPmDytTvkspa50B6wiBi02T4wfwAMg09J1JG8YQzjLR+7LkOuHQswMhBs30y
	33bZRH3nO6zogb+RQIGrXz88XO9ldNHKfarzWC5M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658996452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gu3oibfT9PfGqrwxqhZBPRXJ4CjGoaDJHLcQ+UGTrbU=;
	b=cgZlz6XWT97atVVPaL8KFkNoA/x0IUpOoEMD6R7soQ+gTwonDy04wzH3UVuH/JHn
	Us0QLmAJK6UGWdHC3+ftNg7J1DVHTbKLSB0DVMfT1zJ61bBERjqcfIi6d9I7QURjNYO
	TsZiI0IojQHFQnlDIHXDz12zQ6oxF+TcDJoUCkV4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018243e4ecf3-9f2b5761-b3d4-40a6-a033-415c36ed66d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc08cf627431b1a6f87ecf4c1a70fa4674b8f13a9089f2c0154d3f7d3ab47fe4
Date: Thu, 28 Jul 2022 08:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658996452
