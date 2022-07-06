Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03990211C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 08:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657096012;
	h=To:Subject:From:Message-Id:Date;
	bh=Hbk9/4VOE6186l2ZJ5AG9JwxK2gJAokwxAvIzX3nVPg=;
	b=FafL9sfjCudPTOlRKRMbEk8QvIBMwxZrRLjnt7MKHvAyEVVV39oLYA3/6fNSLmy/
	/DbCprQe3YUImOFl1JeOKe9EMz68RhE/h0oho1jkCozx2k33p9qDgUzhhEA04bbdd1r
	36NpveMBdoYpN767eSJ76/kQWStPKHBHGnL9szPo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657096012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hbk9/4VOE6186l2ZJ5AG9JwxK2gJAokwxAvIzX3nVPg=;
	b=IRgArAdUf/qeB+xu0zIqZzcZLfDMkHnKjjio/f6YelpAdfSf9piAvvBHDqGQ3gYC
	P9BwT6jSSMTOsIG7bhAffH997M/IQ7A4vLhXHRVi3KqZfkemQ5mWpdBBMqScOsmVXUa
	9Cf7Amd39pueE1Hq6YUKG64PTYjJ9oLOAf1RbqjQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d29e81e5-7cbc61c4-7e87-4a70-a2a1-52b3006bbc3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44997d0d7b6343fc0f7503a79f04d325afb347399d9c3425aaec3a3950ebd45b
Date: Wed, 6 Jul 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657096012
