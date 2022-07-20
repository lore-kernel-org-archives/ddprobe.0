Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE3577B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 01:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658279212;
	h=To:Subject:From:Message-Id:Date;
	bh=oxeR+tmx0CpTLiEl7aqIDeODtUyWBKsaCoYHC6RxyYo=;
	b=PYWyEiXUMLie8A6XNzYaaV50nDMslpieAfj6B7A52j1PIj90q+84wthT/aqJOhJ8
	+3Zi/Tx6nFBr+bafRRe4uEVRenUGBUs8fTEqy6+Mm4jygL/6WxwnSvl3WCMAcZMPYjK
	wvUTc/XYUNvwcND/d2C7NBUGzl0sC/JH4Ct7eQEs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658279212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oxeR+tmx0CpTLiEl7aqIDeODtUyWBKsaCoYHC6RxyYo=;
	b=DOLRh+J808YGuctGOVjH2N2HT2dWMgSGTn6bOSc8hIex1hZMbVbkO6MtFxFsgAzN
	EbuT7nd3WaYzTmA8Ie8cu7mMRL2ci+okxq1y5D32kp3hyP6koMSv8dYIvJi6kvT+Ell
	EaYLCWGzn0qUmWT3Nucfsz/lsYGbdOg/d1jyduY8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821924b4d0-b285bf92-a83a-4953-89fb-6167e05ebd60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b99853715390fe581274697957b149a72bcca369a384992fe65adddbd8f8ad0a
Date: Wed, 20 Jul 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658279212
