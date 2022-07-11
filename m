Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261373C00
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 18:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657565212;
	h=To:Subject:From:Message-Id:Date;
	bh=00rHBkKw3tWRUUcQzNERWJJfppbGyaiXfpZXusHqRs8=;
	b=VIMi7DKW1bk465tQbeL2ewz4f2Oi3KNbsp+VU0DCicptfiFjOeAMiiRkI++d/Seu
	SmVC2Df+EtsBca5V+DOl5zMijiE0PlT4QwZtjZ833Fenvq953tteBwi4DHd7tCFOiZ7
	1yFPyyGNTVk8DvcTA0qA0Bt7UNoE2+YbX2ooR9aU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657565212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=00rHBkKw3tWRUUcQzNERWJJfppbGyaiXfpZXusHqRs8=;
	b=V9fYFiTN3STJt3QBTgggfmMWQyyVBSHQz2q8yXjuPOtWsnMBhqiGu50NKViob1AS
	8VG4H9DjqIqgnUzicqh0LYlvHHXEB7XEhf3swelu2JUbz6SFg/vSsr56Q+A5WSXs7ZP
	Zi6oYyHuaZs6S4C+R7gbPUtLrArmHcPTZVschjAg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ee95eee1-a674ba13-8fbc-4c95-8a64-242363b0379b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ee2f31f4227af3f20ee49d079a7e6f2524f5ea2c2be930e785b5452ea5a7eb8
Date: Mon, 11 Jul 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657565212
