Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58807639
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659586852;
	h=To:Subject:From:Message-Id:Date;
	bh=FcRUSkJNn1lgXhZ6ALC1WRaiibrBag7UkNWOIUPZ0a0=;
	b=hAiC5yGx9dqXCV2rSg6FrOjdaoC3OgAExsIRL+kiqWBLyqcK055eGRXCc2UwQGNR
	dT8xbB4HgEIWwS8RojCxmbTF7s+BkiQiHw6+g+OTWZ9oqCMAtjhpe8yvCK4QkCx4Qbu
	c1lYZNERwhMtq5Ywscbf+4yzgbjOcM8kdwiMCLL4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659586852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FcRUSkJNn1lgXhZ6ALC1WRaiibrBag7UkNWOIUPZ0a0=;
	b=Du04J0aNzaUTAQ5Ex2hXHB4o3ragr92xTkaE1hCSW0baaQ3z0Lm37/1TXIE8AwzX
	Vy/tBusJoHZ+Iju6Y+1uS06D905K+VMfi+rk/g7PnlfpF68r1MG+gC2xI7HSEVJwn6A
	MxPy4hq14Iu081z4C4i+IIz0geAuKayek81yshBM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826715b6ee-05cbdc41-4d93-4f49-9970-68eb0b1099a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfc28af82a5d6361ee2443a2f5a7f1293df5fce0fcb65d276086b5052ff3b2dd
Date: Thu, 4 Aug 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659586852
