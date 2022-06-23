Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAA51849
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 05:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655961779;
	h=To:Subject:From:Message-Id:Date;
	bh=RhAPertLWFWXGChNFqkHM7FjDIcJR8Icl+os6iPd/G8=;
	b=KUl6l90q6G4rd+uYLepYmQiUI3mGnudSAmnfoPHRCyuURCsXFTIyE8ykCjFGCurR
	q1yONTRPQ+ACZ9bsTQXFBhDrISE7POUMdJlBvnmvrX6iLKUL9eLvTKpCRjqPdBdhaT4
	4V4a5Mni2xk6R6Pmc3NvoVw+/xxDX0KwYXbQEIlU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655961779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RhAPertLWFWXGChNFqkHM7FjDIcJR8Icl+os6iPd/G8=;
	b=bj9PVY7hZkAIKMgkl3h7UEhZiXZyJg742zsEkbraLGWUV+rvS4v/B9oLH8LKmCOY
	OIsmI2NN1GQgKfQs8piZKKSXVm7jTGMYKdzXufsG+y4p5BBSDkOuAv0/DTl3PeeerQe
	Y8lLsi32QCQcmBFVWE3tj5vt4TI+hdFtUFmuOTvE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818f037c1e-cd145051-9922-40fd-9271-620ac9dd2ce8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6279ff467ca4e2da471a627cd34c23d5b0a9a179a61c204ad66080043aa67c37
Date: Thu, 23 Jun 2022 05:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655961779
