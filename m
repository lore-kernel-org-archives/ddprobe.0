Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21FD15A2
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660956053;
	h=To:Subject:From:Message-Id:Date;
	bh=mJnMqMW3sDSTTOpvBBURXXt3KrXmJc+U4K9KlwxSfKo=;
	b=cyP2RzmxLBMQDKF8uF624IiYMPYqksDi1OTh+ttk7TEBv9c/ooYzLsdZ1hnQmK5y
	QLvYcgqS9jPIe7NBP+8sMU00gclKsseXjdm57CHqh082N40a6DD9IjnlWtWj0aA8P7g
	p8WbVTlWYwxsLUDjngJO0jQopuUAdgzOL4xub0zo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660956053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mJnMqMW3sDSTTOpvBBURXXt3KrXmJc+U4K9KlwxSfKo=;
	b=Yd7heL7L3tfP09Td15BREzXQanZIxNXgUBxRW/HmFo+EkyIHs4HxLDkb/f4OJVgt
	As2uZ30Eia6DHdy/j8wfDPwrXHwWqjsAxR0EXqu8TNImcFhHL/2tj2r/D+oUj3OJFE6
	VfKer5qVWQvVqTiLyD/PIhEm/Solby3Siki8s18g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b8b20ce3-cc29be35-c67a-4324-9f73-24b2b9065858-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b0ff52e65b29ce8821ee51da8413e87845899ca22d3c711e0e7eb793fe9c5cb
Date: Sat, 20 Aug 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660956052
