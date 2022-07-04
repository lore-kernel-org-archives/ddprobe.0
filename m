Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F235715A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 07:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656919012;
	h=To:Subject:From:Message-Id:Date;
	bh=6uRT5vgvNB+VL675kMnZC6L+0x2U4irR11T3jYsrwDg=;
	b=GUCjVuSKxUUV9f9A4zgZhLAVY2BYmZ6f16vjnTPaKJAmZu806ysHJMeCBBR883Se
	pqmosV2azvPbag7pgud5nOR3U4D78Tf0oceiKV9JrPoiHVzz9Ja3u58exwdYlNRwFNu
	/TVkH97qoUYus+vB0TN5mu/cZsVbxkGSeyHr7xfg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656919012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6uRT5vgvNB+VL675kMnZC6L+0x2U4irR11T3jYsrwDg=;
	b=jiXQR+cxLErAHXMBzeGFz0YccmAMVqhh9+qE7tT/5NqYO3olccvff4nbTzZu6hEC
	vYpkOjw9hoEl5n2XMqJzYSnEaWp5EqVSsgKHeNDHBfOJEZiwC7QZzJD+BFF1cOHIzlE
	xMrCv7425nc6GZuPk5PS7Q6QenPAl+49ndvJqeFk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c811b3b5-6029eefc-477c-4bc9-9fa7-692d9cd0f7a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f95318709c2efa00a37e033a82f043499b1d659a13985f47968253f25533e12f
Date: Mon, 4 Jul 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656919012
