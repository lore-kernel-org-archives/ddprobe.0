Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350EE3D6A
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 19:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656704812;
	h=To:Subject:From:Message-Id:Date;
	bh=fAaXm4wkRIB1am2wgxLpjra/geCgwNL2+7fksGg624s=;
	b=X3N5Vc5Z3LM9d1RMfpB8Vx8mQ35ImUMbmMJErJY5E3qy3zcRRkm88x/7bcVZ1RMH
	+N8XFoQT148lXLmxTFHpX03bgB41+S1mMUOI6HN3PkpS8pa0niAhrMlIZvO39kPoZu1
	D8Ds/LjubmU0D6ZSZ9//bBixvR1ylY8fDumzI82g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656704812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fAaXm4wkRIB1am2wgxLpjra/geCgwNL2+7fksGg624s=;
	b=CYIIsc07uwkh4Q/EKnd2UDoHoS10f5Nx9KZl1Dv364k3wmL2g4+Yx7sXoeN+DfKM
	idfBaTTl+Sn+vBUqM29NTx2IXx6EylyzXje5vBSBvFXKgZvbr8BG5MeMvtjyF1VzzII
	2pVhcj3UjOgKZM+YPp8/xJlHKAAm/4NdyYyRe8ZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bb4d4550-3a1a2d6c-ce47-4daf-8784-d32bfa9c412e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38ceca9979147ccbc3439988bf740598b6e27d1d427100e14c362db8c84754fe
Date: Fri, 1 Jul 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656704812
