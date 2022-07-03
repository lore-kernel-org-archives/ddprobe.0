Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB622900
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 16:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656867412;
	h=To:Subject:From:Message-Id:Date;
	bh=mi3JC6R7Gu9xlGC5uj05hCKmhXkkMoFO1WysGehFFxE=;
	b=ByichAP38GK8v5b4H6y401Da4M9ikaHp9wFKHA0dT5/fKbmxPFHQMSYXqi7/uSpO
	M1ycPk27oKBFJ7ClaN3Bosyrx5W7vbWSAUOE4lFOwIXq5J6PuB1eXLPepSEuEu2AvQb
	KrKsqwrSVlUZ5qnOsyLipmwNjYptsMFhGlKvSFAk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656867412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mi3JC6R7Gu9xlGC5uj05hCKmhXkkMoFO1WysGehFFxE=;
	b=gK7KN7WznAvIMsTGvjUTM9zjlo4g/n5Z+bimFyExU1HJ4vt1ibtNA0l4jtLTvPoS
	Vkfrml/pbrKR2DcZUcqv/pVdLX7l+t9t4w7Ekm/JbEItMW+1ZS4FaultB0W9EOiQISe
	dWFrAGkAnA0S8YYJuinspKTWEM4gbma8NdMb/Ez4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c4fe5937-f109c58c-4a79-4b00-a601-0b98d6bf9e35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bc052481fd18f90547090e14cd244d080efe7888a13a3b8d12568b459479fe6
Date: Sun, 3 Jul 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656867412
