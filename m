Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C41E3D86
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 22:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654553879;
	h=To:Subject:From:Message-Id:Date;
	bh=SzJqN7ahnvBJ+wEYCh77mJj0n4mpbO2prO6BaJGCffY=;
	b=PuDe9hZWEpKfCVQVBVnsUaIX4ZQzxidNdPEZ26iWt1A2smPhYTgMC3eoXNAPc8DH
	Dv7nNzw4h9KMzTmTA1QQPWV4pdTsJ0Y1AgY4VtXefs3AH1b+rd0dGl5UQzxXZMwDq1i
	tPECVpXFiQ9/znrMX6/6WIJZwuvBPWix+X/3VP8E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654553879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SzJqN7ahnvBJ+wEYCh77mJj0n4mpbO2prO6BaJGCffY=;
	b=Um51yfl+Vl/Wqju5ZUVuTZcqH7Ii1MIqn6Ni3kD+6qzQwKYZSEqrBrf2UFo7sfhc
	rZXN6WxHmeMabNKT7CxFtfFfZeRVewTWRZJQha5Fa6uM053fX6maRwaRcDqRp5Ecgfs
	mmluo5yMKqzQ8WGDLlNmCoTJwRrTrYSzN/hEcCaM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813b18a2f0-1d394699-32dd-49da-bae7-779bfe4f479f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31e9e7976421a3aba26a33f8f23b804056a3b3264a174accb9ec597868b141d8
Date: Mon, 6 Jun 2022 22:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654553879
