Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8B9729AD
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 11:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647776784;
	h=To:Subject:From:Message-Id:Date;
	bh=5p5/Tw1Z8uZf9ueLmZ2knP3FPkOKvgPOuFxRkfi1/Bo=;
	b=QTUnR+aDBhzmICt+XiGna4FaK1m9xdzyRC0jo2IKWaqqoQU3PF1fQd4fpqfH4JyL
	JBP4EVLc0Py+zsvA8XoDBZEvOrNcGQcFngtagEJlFvPrEOGms/OCHmy/U1u6be/IUHa
	F5oiDCAF8vwfCakVbxgauTVALosxfmrzKOwzaHMY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647776784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5p5/Tw1Z8uZf9ueLmZ2knP3FPkOKvgPOuFxRkfi1/Bo=;
	b=FBqtfmQ3GmgNv4LrBhwlAVOc5V9QtCsI/6OJ/9HNoqVtK1cGAXJb2Eo82Z9ufX4P
	9CtET8+LdfVSFZ2ODkEJ7/6JkjGlk1RML49sbjYWAij7++VuJVPqF43NJrhSasK0oDC
	H7fPWZ62Eham9KaaCyWdxEvga1Ss3DsJMVYb74Ew=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa726616a-ecfa5e13-c8b1-43d1-bcd8-c81e919b957e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd25cd63d8d7877e67a384dc81b02758ade4ec27dc7a7432815329d442dc09c1
Date: Sun, 20 Mar 2022 11:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647776784
