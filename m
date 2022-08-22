Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5D77B
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661172052;
	h=To:Subject:From:Message-Id:Date;
	bh=YdFH+QBCGxFGq1yvdBUzKw1jDelLhKh3j9HOKG3JtDk=;
	b=I1eC09f03ael6YSRgICowQJvp00X0vJuO91vjHQg7aU235iex3yuwY6iz/aqEYqv
	s8phq6h5pRoNm/ty+lomw19aDTLzK2pamPvHA0nMJ9VgcZY5KX2t+ZDZUceebOjWVrP
	c/vIBoyPCiG/vP6m9Z0mEd8CIZX6MhhHwfy30XLo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661172052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YdFH+QBCGxFGq1yvdBUzKw1jDelLhKh3j9HOKG3JtDk=;
	b=QqvdtB2USx4dKcQNrBwR4TLvS4NQAGZxa2/N3O0zlLf+j8DFSG8qUbWI0tdsD372
	n8B0roMKvV7MxyyOq7YW0lsvrBtThOEtFNXP4eO55fd2Vo2Wyp5wdA0oDGCIwM9oSIK
	Qp/mRel1EDguatdGp2gkPBO5qcrofISZ+faMyDAo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c591f23e-1e762455-9857-472c-876d-6aeb2eb932b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 584e7a349c42fcd5be8c8336f6257e6d298c4ca3c834e98a682289312a9cd479
Date: Mon, 22 Aug 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661172052
