Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125BA2581
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 20:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656103612;
	h=To:Subject:From:Message-Id:Date;
	bh=iT45NyJ+OBmeQ5FhoaitZGRkavOEzQSNc8rj8unfBW0=;
	b=kAuuUywtMoJ/Fqtrvbf1FmxDKnSMpK3lXctJPLirGAVZvrRdIACz6zh7UrTnqB2t
	redJOr+DWPL1h0lP3POkNyj6kkdd946V+FDrQkfV298NZBTrrWbB5udcBvRInF9aMkA
	aJSHpytM91/Hg+Sm+kiSg58UosElAmXsVZZQP4VU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656103612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iT45NyJ+OBmeQ5FhoaitZGRkavOEzQSNc8rj8unfBW0=;
	b=jOKdKp4Veu3x2LZaK+GxAb3nAzu3SCu/8p6ulZQOQVKmJHZup5UJbX+8zlfbkc9O
	YB5MMGvpL0zwBx/+4KZj3cwAJxxJGSBJiLlSzLnfHZC0MrEp0YUNGZ4lroKjW2fcdfz
	UBPpjuUNwE8XxZZPSravz29ox8TQSopounu0KqBA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819777af95-3091fab0-4aca-4741-bdb1-972e206faf0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9769b5c3b8c4f07267e15b147be9d2580ac4ecbbbcbc8b8717682998220eecf
Date: Fri, 24 Jun 2022 20:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656103612
