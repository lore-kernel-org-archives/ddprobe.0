Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7E623BB
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659163252;
	h=To:Subject:From:Message-Id:Date;
	bh=GK0LDzbRQLanS5RzPSFSLnZJRbV4p2adLfsp0LLHgsU=;
	b=LYt/7+RV1xhzZ15YZTa1rJ24kJWG1KasZ/1OBCXgSYNLYRZUrmGWc014x/PKseUl
	Ms3tOL4cXZRffIuaKcuCUDP/kuAcwwdWoT/m5xxijPVcg2LP8PM6IUCd5AIRcnosHKq
	JUh0iF24ehcMIQ7NbIeYsUrfYZZ2v1D1TNG3zBEY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659163252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GK0LDzbRQLanS5RzPSFSLnZJRbV4p2adLfsp0LLHgsU=;
	b=grdJvtZ16SrSm1l+bLv+YiLp0BvUZAl622FFISOhPu5M195H+GXO7t85vUTl/Zav
	PEPdw1NPpbFQtccdw9tZD2N8peqwf9TA2DqLs7mOjFr3CXuYtJQtiffT2fIEuBWDf1l
	YnpNgzHhhdMxpjVNys/vafHnszxthnC7GUhw1TgM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824dd61753-c5028a3f-03ae-4c5d-8dd4-024e86b7dbc1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df7285e78a2dbea873ddc97ac74689a561cc5954b62c7cda50cd11283f996c87
Date: Sat, 30 Jul 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659163252
