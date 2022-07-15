Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D31D665F
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657861612;
	h=To:Subject:From:Message-Id:Date;
	bh=uaaNkr+dbrGA4yz/KO9mraM8Gy9joq7+REp8aGHChyE=;
	b=kGyGBdgaaaD/pnqxLNBrAhoKpyIiAIrpWlQ0DvZ0BkmFSIyP70Ou54Gexe/V/q92
	E+JacwrQPDHjHoitKCz55u1vFBQmmsJ8Yfl/+lQqYSZp6yA14tAksU0P+5GLQmtOjYb
	ozgkxCSCh28M/rC9Akzqt8b5IFh5lPrpoAUyL980=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657861612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uaaNkr+dbrGA4yz/KO9mraM8Gy9joq7+REp8aGHChyE=;
	b=lD5L54yCV8x+uEkr5BZK7bSORSGKmxXfd3MqF8llH3xjeVtydVDMn4EBxN4bjxjU
	ny3eLGV2zZhall3afkJKGl2DjMjC1iU1zzHFMitXO6Lz0jnsoNqgIlfTdOkvEGQpuXA
	gv9yopz1RnC+T4FM+ofv67c/V22JF2v+AZRKu8Do=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820040a360-9454286a-c7fc-480d-b873-c0c9f30b7590-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb2c00111741a40d1eefe35b43aaf1d16be46888fb5c212e6db58e8b470fa82c
Date: Fri, 15 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657861612
