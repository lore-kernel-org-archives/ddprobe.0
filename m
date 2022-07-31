Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E3215AD
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659253252;
	h=To:Subject:From:Message-Id:Date;
	bh=rWcJ/bnfbllIUV0jwZbel7ArjiSoG/RRLYJBGwSsUq4=;
	b=kOcGdpqGtf+QyzKsa1inF9UeYx1PRbILYCqPQwoOoJa5s2SQioNbsgiwuf2h6LUk
	IluqLgjEdHZgWXjnbtqv13DBS52TdACTbAhIILEt498ZXi+cVxFUZtnVYDlWY9kbw98
	84iQuikId5eWbVI3yxgKTf56x/tHF+7HJGepdR74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659253252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rWcJ/bnfbllIUV0jwZbel7ArjiSoG/RRLYJBGwSsUq4=;
	b=DAEFeJT24u8vTtrNGqHU1hlXefKYoM9uw3aLmRsc7YXVq9GsprLWake4oEluVXMA
	JeQ9IxR++iK78OPrQiIm4YlKxqm88sLOjTsLirimOKIb5cJ3lEPfdR8KEbDUJu7XuYP
	sOoFEhKeh79fuQLPw8RGVlh9kt5D8WoguH4gT1Oc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182533361e0-3cf61dc6-0dae-4b72-b6ef-cceca646f818-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 519d56fff84967934fcef3b86c71d7e296e5a047b9bb8a5ca0739ab95397f061
Date: Sun, 31 Jul 2022 07:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659253252
