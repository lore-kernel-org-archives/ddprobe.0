Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0F37E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 07:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658647612;
	h=To:Subject:From:Message-Id:Date;
	bh=ZOwDdAk4cmAF73BFMym8G6vrtnpGeZGzsYofcuMVuwA=;
	b=Tn2NorB9494Kc/ZizqEFJNjFe0mF91z0NZomqENvbzHEE+PBl5Tc8o5X/E1u0tHW
	P+1TglrL1uIP1WdlvZsUhGMPC//decsq84QgOrUJG4XLX4YqZ83u3sMGPtWJLLVXsJ6
	Q4notPDn+2Ir711jv5FUdpFw8FUDHj4ff7TdLVK0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658647612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZOwDdAk4cmAF73BFMym8G6vrtnpGeZGzsYofcuMVuwA=;
	b=ZmHsCK7KBTzlxkDSZpsYQHvfWxVVwEVKIC6X8RKwbiZ/1JBpD++WPZ3sJuVC9X/4
	enMdkkCPumb7nVuQrF5LJflhHIj/jonLJUZB7hAyhJfNTEFLjn006CZpY2EnqqmBrKQ
	pZi0awI+ITml/PXO3RTGG+o+fVjCnlYh8As4CxW0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822f1a0b99-82322bfc-c90b-4b27-b64e-d5222e7826f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5cf2a177010a0a9d660b9a4598d866257439a60374a2fed71ec7d8486c56ba72
Date: Sun, 24 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658647612
