Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 711B11FA0
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659184852;
	h=To:Subject:From:Message-Id:Date;
	bh=vNTwqp5LUe4Xn8XYGYk+o1a2neFM7GoJezEg7WrY3p0=;
	b=hHUuXu5LGhJN3c4raJK+G5SSs+nje7LdTW5YYnHIbWYMm6hhh1ssKm8ojhibDak3
	GE4gscGJ14Tkgzs3DVJtjQqpe/3i6IX9BjBdFI2bu1VG7UlRMBuvvYKgUWJWFbQVrJW
	S72S1oc6jc7LxHjj+p6Fqd7KMQ9Bnifk0Eas3mpI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659184852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vNTwqp5LUe4Xn8XYGYk+o1a2neFM7GoJezEg7WrY3p0=;
	b=LHpLtodVv8Ja/L83ArOCMgrgSo/J/8HsTFsfapBOcm9+PterdtSrdtuCM16PSE7M
	MK3jfN8BNpQwvFDIGe0WpChIl7fq2gIVvP21SZPSfdS9+mWVQ4baI9qEbYhDuAslBQ7
	q6lGkrHN1kvT0MX4l2p8dcyuHMWLRVgeqeamulGw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824f1fae58-c73e32ab-bbef-4b53-af3f-57e4f7d91cb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9090f3cb0bf42ed95faec1d5983b2093c6960885a58bd1ab7e70e61e5ce0900a
Date: Sat, 30 Jul 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659184852
