Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C735A2F26
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659828653;
	h=To:Subject:From:Message-Id:Date;
	bh=2/CbAbi0mUyKU5LbYVX8zlGDZgzfTInpElM77Ts7Opc=;
	b=fvAC5lf0jHBIn30wdWbjAXKbletF5lzQcvjtdlSf0ia9FS+j4CyOH7XkfPmgWsfi
	3sQna4c8F5gy3EQAjVv6Sc86sCbamBc5OAiySkbeACjUKvZCFsw+k/ps6qosoTUlU8B
	5aBORMmyWxjHVviSoIxx2O02S8yMPN2kDTa79wtc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659828653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2/CbAbi0mUyKU5LbYVX8zlGDZgzfTInpElM77Ts7Opc=;
	b=Vsnk6NH2HXzF73pckBG0H1JhmkByrxTY9vi1kZSzmjBzqmBVZJzFLCnJkm2gIq4G
	5sSzk7nctc7xq0IbUu+vHu4p00Riur9NdCS8P0hLF02XLHsQzsJbM7K46dUErVYIact
	ILDbHnI0qxSfLuvfl6ZqqYnqGHKKqGSt3D7lMGmc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182757f4a11-ffe04c19-1505-4a19-a03e-013156d865ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebf6a77500f42680778a35770a6dd06029cacde22e7b4623fced5354bb241d0b
Date: Sat, 6 Aug 2022 23:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659828652
