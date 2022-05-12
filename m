Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C955190
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 01:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652318459;
	h=To:Subject:From:Message-Id:Date;
	bh=bgokBHfW4urTDVqcSNEKniUeT8Lsq8h/ePz/0UI1HoQ=;
	b=T/5NOHB3WYpvs0zbBgg5pKk3XyFa5yqZ1zozV+7HN7oJ5aW25uzm7wiVGZsTPPxG
	F+v+nwfLx3UENDVjQw47yM18obpRkvCAR8r9IsWe6Ie36eKu8bMhuvt4vtqOPubXMOD
	16spAvat/CQedag4ZQqAS0WRQ8sWtgioAbHNibU4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652318459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bgokBHfW4urTDVqcSNEKniUeT8Lsq8h/ePz/0UI1HoQ=;
	b=FFp8/JcNB5slSxZOGy/rgXcffI64LjatWS/y+nbLoIXysinls3JC9mexn1W+OYVH
	/J9pl886gjdwvS2YPR7sB2sQmtGtsSp0p3KL5fQe0BYRJyjAgy5gGTgzUsqSbULVLkC
	wMMK6M0w6qTrBC0nXudE/v7RaMemv3xtHFzhfods=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b5dad5b5-f7387353-ef65-4bf2-8b19-fd01bf8ab19e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 680ad060e004f72793530b8e797d427eb532731f02d4fb175e2ef7fe934a2b36
Date: Thu, 12 May 2022 01:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652318459
