Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0431910EC
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 04:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657426012;
	h=To:Subject:From:Message-Id:Date;
	bh=6Y0aor/fR/1jmySslSBRMuZO+O5JM+L0T4o1dnNcz/o=;
	b=XK+FK70qgBEUZKZFef9pZtxgygBltghecBT+4+SWD2st79PrXXYCVt8YvZY58NiF
	SDcRbpebtfhR1Yh6fXWooVvS6kUO7G5b5gipz0on3vAs9Ow4jecgZ72BbDese2ICPGM
	MRuzSJW3PBwHuSqbvTzxnro6kIlxjXFrFaFNulZk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657426012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6Y0aor/fR/1jmySslSBRMuZO+O5JM+L0T4o1dnNcz/o=;
	b=fx7LQv50F3HdoZteCwPDG/hRUDsdOYfFdiw+hZwF9haZ7jjX8Z/YdI9cdRFMkSEh
	NrfnG8j7fPjc1vCFzdEGubxLPgGRzhDI2glh6CGeB9UWFlLcVP8ClyIZLda4hET7don
	Tel3/EcUBItuBR1TA5QdNGQDCqRxMjCQxm0yKTnY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e649e881-98b14d05-7b19-4004-b077-f45157f01b07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54015033abfe34c9f432117528c6649cc976bc0b995f660f46ae1684c577849c
Date: Sun, 10 Jul 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657426012
