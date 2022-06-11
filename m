Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03AC57A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 13:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654953359;
	h=To:Subject:From:Message-Id:Date;
	bh=Fr+MpV3QIxwWp17mQIvR+nlN7wldTYmmLqwvyR5U/l4=;
	b=cURRQRbqD/bOb97wQKJuICCUu4suJhiPvEZOxddSGm92dfwNToSgk2VML9JcGKre
	HgjAxEf3+SzoRcTK61TqFN1oqd3KL3mgh8R9hYd1GwDPy3InQbIccGR3B3iq0Qvv7Oa
	ND4tKeaP6huzZZWe8GQZLJOcaazImlPYHv+/XnXs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654953359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fr+MpV3QIxwWp17mQIvR+nlN7wldTYmmLqwvyR5U/l4=;
	b=fjBJ2sJnFKQQhOTkRLyLvVH8u933K2dtALNjnnHR9ShzoYvdSnUfF9AKCbKjdIf/
	HxN/oZvA/u2pCnfZ4VNiYu+eu13ZKMPkLBWhZ3aghbaEAgOSKbDJjq/mo4JHZUQ4WeD
	E+/muPgPtfOeGy/Px3Z1zDzOCEvzjBNmPkb3fHRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018152e83793-17f310a7-891d-4893-844f-e1889859439d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c246b41926d95bd5f584e7164dbd10dfddf7032617ecf6202963f90461763cd2
Date: Sat, 11 Jun 2022 13:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654953359
