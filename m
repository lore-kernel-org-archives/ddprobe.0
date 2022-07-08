Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA93F4C72
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 23:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657323412;
	h=To:Subject:From:Message-Id:Date;
	bh=k2ISW7gpUOzUxNx5Kj3YkwtvFKIeXx1UA5Sn+77V2Z8=;
	b=E3JwdUejwmG5pBl9ZuyPSK7O8idHRe2YXBD91Ob043Wr9Tzkitm6NpVSeQ1eUALC
	JNKAEs1dZYgAJk9ZKdInVT4Nb/W+XLhlFfF9xfslorCqq3NeKrRl6XfHJfOzA4PNae8
	L5fiJGwKHsu9IT0yLuUSs9XuyGHtwy/21l2Ugx7U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657323412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k2ISW7gpUOzUxNx5Kj3YkwtvFKIeXx1UA5Sn+77V2Z8=;
	b=irJHXgVlccTITeQaTbf2XB0rGddyu+X42eWSjVSpSdk/Ta/63Tnv8Zvo0KJRTw7E
	Jz5MrVHewZtmmHaAQUl7xcEkR+ueww1svWaaLUhyBruoSX1+WR8+B/+IDKTNVzoMiZq
	Z9EFel2lEnGITc6oJD8Ib3j5yBJrKp17UdyMZUVI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e02c5b3f-863850fd-afe8-4ad9-9815-a999d7bf8152-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8a8266b05404ed0e2e14917dc76289e522a8416d3a533289beef1d2df75161d
Date: Fri, 8 Jul 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657323412
