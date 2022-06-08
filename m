Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264817B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 09:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654678859;
	h=To:Subject:From:Message-Id:Date;
	bh=IwTidmo9l5dbg8ZTbHKRsteMosaumvQrCnjXSvBu1S4=;
	b=Zvyxw04EXJTxiorKx09JgRT18AkVMO6IeuWvJE/HaRdJpTBuFTDQEi2drBzd+H1+
	uUyzwmIchmS9p3ELz2L2OFg3RISGso4V2nU0s+4wO9CCv//Zr7By/7G3lnC1yZzTYuk
	mWgA5crMzSvP2PYDBnISPeqrTht8o2ZFune1jzJ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654678859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IwTidmo9l5dbg8ZTbHKRsteMosaumvQrCnjXSvBu1S4=;
	b=f3oisu6lLRNDzajnlSOng8a50DhZC0lEvR2TUgrvVJLNUG7AYJclhj8ju0/kYMGC
	ennsgv4iSO/f2lmX0qUYTi1IKwBM+vqPl8I0fdQtPF0/aBY0YJVg9fHGzvx6e6a0hKH
	KDlTcJI77KeVPxluIDtrDZLSEy4HJYD3/AJU0UNE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181428bae92-df4439cd-e054-4129-9e64-71bd12b21b70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cea964b31e8894aa3496bd488f0ecc38e13f8e2217aa77438aec3013c922c1d
Date: Wed, 8 Jun 2022 09:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654678859
