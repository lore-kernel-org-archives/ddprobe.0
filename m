Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BE6E33CC
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660644653;
	h=To:Subject:From:Message-Id:Date;
	bh=PCt2dDCohaUDOPA/Bp+uLaxmPgDAB+Mt9TuyWlgjLCY=;
	b=MhGwKmJfhwF8Ut1scwhw2hgyyNaoE6bexA4a8Xrs8KvehgGhRXdmisDWwC4Kq+zH
	auyNdiWtVOpkLMreKyUJhclaA4HjRmQUHYE1kzousec4hEbQIzeO6pix5duaiJu9F79
	jHOR0vmmzKpkN6nBSSAz/FBIcvzrLM+Q+qlpbqZk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660644653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PCt2dDCohaUDOPA/Bp+uLaxmPgDAB+Mt9TuyWlgjLCY=;
	b=i9Q8HK6ZDtyX43eTlELPke+gUxMZE/vHbrl220oSZ+31oiJwzd2fUInURWZemUOM
	lrDCmBXTGj/1HBiQhRH7TXJtWyruZO2eIjQLfo4Y39+joT5nG6XlGw65Dk/TK8OSnmd
	KEwKAgNDcKuLrW2V9CAB1PGUv4spG+5VaE9fcato=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a6227658-bc38dfe8-cb95-4574-afc1-44727c19c330-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9530e0bcab1a00bf047d2a3a2aed8f8b7fdf3a48d833d6efb5aff7bf7cc23de2
Date: Tue, 16 Aug 2022 10:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660644652
