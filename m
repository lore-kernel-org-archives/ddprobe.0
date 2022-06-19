Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFD4C7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 19:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655668199;
	h=To:Subject:From:Message-Id:Date;
	bh=3KB+RmpCS0ZEtg+ihRSngaB1wA6Wgvae3uSn5JsldZ8=;
	b=cARyj5uo7Nk0Khh7WJ0+XMOAyxffwX6y2GbM/FS622yVDQOE14TcQYRwLhW0rh9S
	qaO0+XyoIi8VfXzt5wHjgn/AtIPobE01c1L0y9gZKXk2ZjhnWBWXxXVA34iZFUNTOZy
	LU13qZxfq+zbLmEy4AmXCCj9Bf1y+pbbTZUbcn70=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655668199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3KB+RmpCS0ZEtg+ihRSngaB1wA6Wgvae3uSn5JsldZ8=;
	b=YjAaEIHDGaHiOMiXNjmXZEMAZ3vbWi/T6BnKtivUjPJnFC+UMZuBO4kJntEx0ig/
	ByE0j47SmdRcYGf/vW1n3U1XKMBCV3NpWFoFmfTnwpdW9let9Sm2nRGJJ8zfP+dve0F
	CvTgSsKXBbouwGCJNO37lVeoiNgjRhpiqk4tv0Lk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817d83cf3b-8dcefa54-1347-4026-8394-67aa1b3ce827-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98bb372bdb04c433f5951694e64f5dd697a736d15bd8171163adf9432d64de16
Date: Sun, 19 Jun 2022 19:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655668199
