Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200DA7A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 07:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658042212;
	h=To:Subject:From:Message-Id:Date;
	bh=cWDJKXaOPsTnjXYopMlzONKinyaHs8S673Yb9+WqymQ=;
	b=IEx7QYUCj8EQZZ1Y1pAqTL1o5XjrYFAjHGlZr1jj/CpgXNSBkrhPchyT/xv3uTp5
	eHCr8Mk+QkWQnroTcvFUDpy7Pc3I7n7xSkQWedU3MhUKWg3BXwhvhliopwLmzFaFnw9
	+ze2DNUQ2rtlswCYYRCqsNurp0f99SaaoaieQzeE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658042212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cWDJKXaOPsTnjXYopMlzONKinyaHs8S673Yb9+WqymQ=;
	b=hpcsHYyghEjjccEtV9z/AE8Jwq+sVov/QzNBpgozr6Dp9/3dZyxn6LNQjXf9Xg83
	Z8vb2dz8UtDAfL37pV6COFO0VebuZH38vxrKS78zA9W0VCtWlxZzZbPFrgQTzMyhAdN
	N2bctLrP3oBKbaeD/xLmkrmJI1v0mOxyYYYxJiyg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820b045ff8-fc3dff70-25df-4836-9335-56df6c80289b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9d2c5bc7514f403a31c47b8e847907c7dfdf5bd08d685ca0b17735fedb2194a
Date: Sun, 17 Jul 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658042212
