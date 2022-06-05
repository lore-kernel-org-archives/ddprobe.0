Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7E21FB5
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 18:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654452059;
	h=To:Subject:From:Message-Id:Date;
	bh=GKtnQMHy83UBJTGfXqjCLVTlKHxsd9xsco3NQGH1TV4=;
	b=Jc+N3rJlk5tXZGwGCrngW/uA3LKbRJP/YeulaTc3KEZPSpRljhWG3MnRTiqglKYg
	0zEMI3zo91BK6R8TDNkbA6mCcI9ao82pvlRkBB09w1OIFtxujiLBZzqWro52ypLiXfK
	D+dX7HSaIlt9WoeA9cRt/ICloaM9bu4J/Eec3xB4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654452059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GKtnQMHy83UBJTGfXqjCLVTlKHxsd9xsco3NQGH1TV4=;
	b=R2PhLeqoUF83l6K0PdUmbOKmxjEgAWSz8XrBwQbXD/mZd9nVAOu3fgatE6ObWDdb
	RGV4dMPISjFIMwqVit2CYWiamB4Y7RPnQmqtA+46sQSpnL1/UR6H4ddeRrCYuqMpM9f
	keJn8hRei1iyCYp4J3LVqjnqoT5Q17ijhdDxD6I8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813506fca6-f2227010-6857-482d-8647-f3b52f1afd6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d20c64ffc2aaf37458283eb22be0cdd8e0f3feca684eec2a6e1f702b7a4c323a
Date: Sun, 5 Jun 2022 18:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654452059
