Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FE683D6A
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 20:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656707212;
	h=To:Subject:From:Message-Id:Date;
	bh=RblElnY5vl8eiZzJFwNSsenynpu73iY7r296M/O5Y4A=;
	b=lW2rTCQUBR+70vqZlugrfsTWHJmFPxwZo72i/cMJ7L62CYdP3AqRs2svHJ/9JKu0
	JQ6cvux98ZRcu7OUBk5lgFNDYCIpMybqrvMfho4+U5rSHoltRhomwm239kTLuiqLZFZ
	FHsd5LSxzCkrU9dYJoxbsaucim2glqdyrpjYAqKc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656707212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RblElnY5vl8eiZzJFwNSsenynpu73iY7r296M/O5Y4A=;
	b=YdWlmBCAQ4CvBESwl/hBE0MAW22kNGO5Bj7GIfdvnYpsCLG0do+rOMUdC2bozTt9
	fe5vo7aJf4vzmlbZ88TY6Ak7+7VNrs5/kwKVfeOjJdY5ja/s9pWxzyzpReUJ18+smGs
	yXOl28TbsOm7esi4QvFkuoqFsjcDCgC+zQjGNxHs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bb71e41a-dd12b9c3-6e22-46d5-9136-acfc62c288e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac42e64071464f261b7f23f29f76075e12ca0442b0e053be6cd0eca05fa82ac4
Date: Fri, 1 Jul 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656707212
