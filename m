Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192A73C00
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 18:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657565812;
	h=To:Subject:From:Message-Id:Date;
	bh=MV8jmBhnRl8ZewdungAyrffJij1wTBqV1ZWGbgvfd28=;
	b=UTVh6EcgWgzaxPx63t6iRTyT/epGNFwaAAMdmyJFayUVpO87WWDqxcl01Cj9aCbA
	Qlo9r7dX9EMY2jw2/xPmkvMms4vR4VlkhEm4uQubB8h+1BRZ7cZIbKjl26gSsA2hxk4
	W7aN4CaS+0gUofMTWL2IN3/ZomnwAeBsprSHMGNQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657565812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MV8jmBhnRl8ZewdungAyrffJij1wTBqV1ZWGbgvfd28=;
	b=i23O3lN4fOBideJa4ZU36ql7D6THg3pG/gjoQe7AqKYRXc9VB2rFPYl0uOUtthNI
	u/DVCfyIg1n+IX5PW6auzghsJoQXDDRh5n8qKiXYyF6Q0BrKi/ikE1vT8HFSg5S19GE
	Ht/5xeu+vHUvI6EBgoVZn44p5I9IasQm46s0/2KM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ee9f1689-543c65cf-a74d-43d9-8416-d70841b7b2c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 000ac21b01781cca612906925bce5cbe2fe878d2731b7ab098ece0e6a6d36fee
Date: Mon, 11 Jul 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657565812
