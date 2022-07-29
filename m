Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA0C4C77
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659118852;
	h=To:Subject:From:Message-Id:Date;
	bh=0VVFzsQ0nxeED5lrwzDfAECHzGQo0qlEIX81Ol6PGp0=;
	b=MCAzW3npnJwwpB9QvgFEWmKN56SZXzrUmPhY9y2pG/PqBxNqJTszjXL+cuHqlb+x
	J9GOLBGyn+i8QPW2Ur4H2GeuHcJCO3EP4FSCF1lYS3qipRUK00DDgSzehBUOzsI/M3m
	TQaP2JRZPnDNZounC+Y+sx88K2qE9y8SI1M+bG9Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659118852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0VVFzsQ0nxeED5lrwzDfAECHzGQo0qlEIX81Ol6PGp0=;
	b=PbyltC3xjZU0Cb2JFtVKhbGJ/Q8zaIFU0pmj5d9MSTeKvh/MxulfbgkdNAbdGG2F
	pKrRfOi78Npr8CNa0XaxDiOZX5Xwea9waLgNHnnJeHWn3hE1zfeAUn4rebtn8EjDnbU
	MQYChsdfACAksuuGa1BjkXxq26lHMvceilCgUxW0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824b3099d3-5e284a3e-284e-4860-a902-b1ff4ea00e22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 204714c02b83e8f0b51ddf63ee098a82964aa334b815e473dc9323bef21eacf7
Date: Fri, 29 Jul 2022 18:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659118852
