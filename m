Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3A2E136F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 20:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651955998;
	h=To:Subject:From:Message-Id:Date;
	bh=/y4EfCLR5UcFWTYZpPIX5rGdZ0HtBUEkiBkqAQOt1K0=;
	b=TTEB26o1+EgWIRVK3rDMjAvCyejGUnyc2mwrXZKRrtD+iCtqeq0MQJLiL+GRMD7w
	pcjUhQybLDEBiJjJiuV+5WJumnD6XkxmB/nzNWFX0cZqSR507SRIOqYDqsj6s8gMxQ+
	p5pejaHhWqRowN+/zz5SNNP3UUkpa4cVlYnbzU8c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651955998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/y4EfCLR5UcFWTYZpPIX5rGdZ0HtBUEkiBkqAQOt1K0=;
	b=bPiHN/NT+2rgUCfECj7oiwhHzpQJZbbai9TYSU7PQaB5Kv0n9okAkYndACSlRXrP
	Hl/Belp1olT40uex5/LDtgDeiDxhDdruMVWxnNdAJODiQIYfw7Wb7RxOQc/f8BUDgku
	q17y3Bd0Su+cRcQqI4JySqhtLAXo1R5UpQ7xioTc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a0401e60-c9bb2c6b-779b-4509-8382-3df295cf220c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c488bc9fe0d7ab05a1b1573bcedd5ae63be639b3a8dce66c4bf84ad8a08ffd8f
Date: Sat, 7 May 2022 20:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651955998
