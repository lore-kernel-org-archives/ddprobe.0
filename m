Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FBAB46AA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 21:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656104812;
	h=To:Subject:From:Message-Id:Date;
	bh=gBN5f1h2a74pf/vSzhGZqsmbf4sLz7+RlQFPJeu9eXw=;
	b=OPYsqOTES7fV8kwC0fbCuzqchG1nCHfo0iDaomBNHvUw36UdYL5pC5cgHJrYmRa0
	SmsZxNLrdmRJU4T6VHMXCkIJoBmNDO5CSi6da9KZHsc1wEjyZVHBbIPcbcU9bIlrPbK
	ZzNbY33GDeCXwII4KAhMexjgHo7ojq3t4z4BhLoY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656104812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gBN5f1h2a74pf/vSzhGZqsmbf4sLz7+RlQFPJeu9eXw=;
	b=eazUEF1cFXenTMx24pj8ndqEHLazOITqvquOp9LmEnzXzQryKafbtIgHvbeblHLe
	GYGHZpD5qaFz62xmGacohX/B6nR7Hr0wSDQm47Su2G2CpfzGKQvZGwWfgmwO5mhJ1sy
	WLDUHwEJ1QzgrAYU53Kyfwl4CgXQHCdU6x7tekFs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819789ff20-f8c784f6-4b15-4009-860f-3701f9b433ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42ae426d68949d38e6dbee3a6a8d201d18300cce24aaa494b4d3806a0966ff09
Date: Fri, 24 Jun 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656104812
