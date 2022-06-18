Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01BD47B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 11:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655550779;
	h=To:Subject:From:Message-Id:Date;
	bh=Xlz5OMAmx9mqxLJyzU0wvCtv9Feyj7TTzp6riXhWRzs=;
	b=MTq8pgHdsTN/7OfkN2oxWMnwAKjNK37P/oVXCgl4BkuUpxbvJ/aaPsWWS2LHakCr
	g5tlNMXvrN2/j9WnMTQcDkTzXRWozyM0kkrYKMP2rlh0xkUJGJrb7x4GCewCmI0Awwh
	r70ERc8VCRfcdbZuqtZrCeGQMya4VgBJd2NFIL5o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655550779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xlz5OMAmx9mqxLJyzU0wvCtv9Feyj7TTzp6riXhWRzs=;
	b=Xvh+rO7HHxugESxWYrnBczahY7ktbUJOs41+s8ykwz74dlswGipTfRIoH76ewtZk
	9wA2qNvt3aFK33BwVgMmhSw7pi3GkmgBcxlgXFL7zdrRmoB+XXTzcEwy4ifz5GGysA3
	1ZkxPwVX6MZwKBDYqAMdK2qZaW/WgI6/QPmMptcU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018176841f88-389226e2-a836-4d74-8a7b-ffedfaf29226-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21ace012132850b1080315f1032ac66055e9d11b43dd112f5879fcf8f7ed4f2f
Date: Sat, 18 Jun 2022 11:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655550779
