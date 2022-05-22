Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD7D210C
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 09:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653210599;
	h=To:Subject:From:Message-Id:Date;
	bh=RLFz3v5GMr6kNpQuFk04dAlNIPlJLQfO80eo9j4yrkA=;
	b=YCX0coDMYGNQjJrHEA71MisNukZEIhkj1Ks5eHVdSisOTx/uGYOI0SGcf89w4f7Q
	xnlt2IgeYUtbP/Jz8ssgx+3CsCA/bi/nMHAkLTyaCYH3opxfmaUDFDrkg8XiGW3a1+U
	jG8CJFSPGt7LAm+wlJhCe+CuHQV4Vt6g10+085uw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653210599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RLFz3v5GMr6kNpQuFk04dAlNIPlJLQfO80eo9j4yrkA=;
	b=hNJHbFTdoZb/al2vStkQYEcwK7i4I7kQHl5RYLZl+KBTOyzMAvOPfqYgYobaLKaz
	etkZxZcdGi92hZO32FUN1XKHtcDbo9uvrPwKXk8CiLbNa2lwoVu0xShg3r++pGwOE5u
	G+si1JMwvOqfkijotg+TAQDaU5IlcX9M/ZGCFoNU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180eb07cf99-45abdf21-7c64-41d7-b67f-7e3e3bb426c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0dd482625eae9778926a401e24886ca309ad1725e8370e24f40b562a91648805
Date: Sun, 22 May 2022 09:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653210599
