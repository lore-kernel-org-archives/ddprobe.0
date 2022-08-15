Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 887447E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660586452;
	h=To:Subject:From:Message-Id:Date;
	bh=Jlbo/TaX5chmmAXR55fU4OpWvnJGM7FSTy3XGOxs/sA=;
	b=BB8Z/PiDSe/yHQjl8jVgS+7k9ya6kkGeXPv5wEuxWobL8vZmKQOBF3Hs2fDWhlID
	uOPYQ1ZKWHzaGejpAIMbJCPsHf/m0jawhreqPTgXnV1VrkmvgRhiBKa/Vu+c3DzA99f
	kXrLdb8NaTw+bA7LAcR9YQyujPFPaPiQDk2yZGyY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660586452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jlbo/TaX5chmmAXR55fU4OpWvnJGM7FSTy3XGOxs/sA=;
	b=UTEpvcVhuTdN6fPrQPXr9VjQdvlX6tJKT2WtCU4b/ImBji+OqXBdDqVqAMxp8Z1X
	3t2KrFyREGwVTYgphawScJWI1dBjwT67/M/uSRJkaUt70MKCb0Tt+UqhglPymx1L9z+
	Vc8Kuti/PWttbpF5uu8VCchSe1GtZp4OGRcy7Ex8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a2aa6665-c38bee54-d125-4dfc-b914-3188984a5c12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac41a4cfeeaabcad65536612eeeb1d6ad4792940833d9f440ac6bdd5f3b7012d
Date: Mon, 15 Aug 2022 18:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660586452
