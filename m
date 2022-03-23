Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D01310E6
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 04:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648011085;
	h=To:Subject:From:Message-Id:Date;
	bh=qTTZKAm4SPIGw/x6vuuOpbxIb3f5zaMqu8JERaRCRbQ=;
	b=Es/S4KL7TOJh4ZpMIyomcsWumB02qM3VHvwgUcPdi1PVlnNfJoUf4IQYo6qCGcyl
	zutKUqaQaehEfcSM2UJgRoInwswj01vawC5fCiy/1OHMrb/lJDq9qZZ3UY9PCV/FI47
	u/IC1Jc+seSZhZWkD507UEZHqbfOYj7OlmpEByDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648011085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qTTZKAm4SPIGw/x6vuuOpbxIb3f5zaMqu8JERaRCRbQ=;
	b=i0Dmr1wIVXLjXC3bdPKPLOb2g3qKRVXNDJL5A34qVtvBEp2uZsG3CFIUcR5Lzcr7
	GLX6ipkU5KYgUvMjqlHfHaer0X+2nNlI6SYljvu93luG2fZbexdDwGFPK+PpmfZ7cnr
	t0+y3Zt06wTVnr4d17S01p4Pq9Npk/locogXGXqI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb51d83d8-33814d06-0482-48f5-9ecd-055306d04c12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f946995497a5b4bd3548e8f80b9f2c48ee10cc98e1bfd468fec859fe7a9f1fb
Date: Wed, 23 Mar 2022 04:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648011084
