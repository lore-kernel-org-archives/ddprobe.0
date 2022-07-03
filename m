Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AE51FBA
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 06:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656828412;
	h=To:Subject:From:Message-Id:Date;
	bh=iSsl/8gO8wsK70bF/Gk7tNfDPPp/VrqUz1i+L9BmUQ4=;
	b=BqAWXfG5/slhinJdOKzqRl8EowJCcUOMWISRqrJoOQ/9G6iq2nFZoE8TgOjsZ/zI
	VPKvLbrd67/9BinibiDWkrY6YuZaMF1A9SUIQLkSlfJttMyCof/ZXZoJlMqyhKOaeaS
	rC+y/9DE0S9eV5HoXmpAbbZwmoxzdgKZPGgO/NTQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656828412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iSsl/8gO8wsK70bF/Gk7tNfDPPp/VrqUz1i+L9BmUQ4=;
	b=SiXPW2JMEoJONOnyEeicag+bT+L+TLJhnZkzDi6UaMruKb6/LEwusXrKWiCod7gD
	pFGezMtnlIMDl1Nyd1UTGBTGziZWl/hbDQyedWoZcIrghQAz5RHsZVXP+H6ZYe2gifv
	17UU32PiqLKe0T2JeaOgkCg2V8GkwZvPI/lMtds8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c2ab417f-efab1e36-f93b-488f-a085-3ae1b06e5966-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 652cbcdff09685f1460c11c10123a0d82aa4f2c2424894b4d5268a453683d007
Date: Sun, 3 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656828412
