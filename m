Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD311852
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 15:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651245538;
	h=To:Subject:From:Message-Id:Date;
	bh=+fWqXHB2snUSHozor10iJekHdvDUprwLOrP1kM7EJgo=;
	b=OSLvjeUwK9GB4NinxtHsWZauJCH+9zdy+S503G7YWTph1Y/qLRindkRNfh+0Sf3N
	48XkeDFOLOceqMIMPvh+HGMJ+MjwVBJ2bLrB/ySPLT9JTU3qORV0P0lbqOqRGOQ2EBK
	DSHiaI5ycRYxQJw0OLNzAMTMc4vHJLBi9SDVqFeQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651245538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+fWqXHB2snUSHozor10iJekHdvDUprwLOrP1kM7EJgo=;
	b=Tw24aT1eYT9GBSV5OzRKSjrFmG9npF/wC651xEfDPaM0GQAsHaCiqVChy8SPaitr
	RgXwgDBUJD+mj10DeEeUngqXeu3ruSl5KcNJ68F/h9XV09buemt/CgztV7njTPZCIQM
	Z+4N6ljqyQom+48cb+r0xE6oesX5/Nh5LmUbqOZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018075e75bef-32f34a52-f0e2-47f2-a689-bfb5f21b5c3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29e4b2f0e3cc633fc91373b3b4d819c4c9f49c1d600dc68f32a2699abc9a94ef
Date: Fri, 29 Apr 2022 15:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651245538
