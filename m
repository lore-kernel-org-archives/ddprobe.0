Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0491B7B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 01:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649987818;
	h=To:Subject:From:Message-Id:Date;
	bh=2SkwCZV//EN8qhEgxJzuT/Ljy40vsGqv7SSsW6A9yEk=;
	b=ZRJ3hNumtOkKspU30N6uQgOpBFSecNqA+mWrniEOj4ikI/UpHU2ALn/XkmAcmBDV
	erYZtUV+KsgKvKq8T2fk4b+86YvhXiOCpSn+/j2+azLTw5TrhczsFkfWt4iqlJwRB5t
	dU654Ae+/ws7H4E1n7mbeHMKVO+SBXvrI8VKWjDs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649987818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2SkwCZV//EN8qhEgxJzuT/Ljy40vsGqv7SSsW6A9yEk=;
	b=C0oat/9N9KpkxcWyZsb56YWOnDzdP5jJvjNgkcm7J3KMIzO9XdxR8vhuvczJw1Xi
	tuavFYAxgKPrQ0prOEsvv4ZPFtWoRUfpr1N8OB3ViZ7aIRDZMErRlDGZk1z7/c1RODL
	uSJZ9FxC6a0qMy+b3hifHqsNykbZWsxReQub6SLI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802af0138f-ba347e09-8f15-4669-9e2c-f642e44cbc21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99443c7a4608a408ee3bff02ae4bc31ea3af880479af967da7a117ca398d5f99
Date: Fri, 15 Apr 2022 01:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649987818
