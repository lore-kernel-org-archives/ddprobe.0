Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2849D28E1
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 18:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652208419;
	h=To:Subject:From:Message-Id:Date;
	bh=hWIyfBw/C86WBwqeRhfGZrvuHaH1+JKXv2lLUafsQ3g=;
	b=C7/nbkD1HyMwjTh0iIqcpTAexKFT5odoccvkucjc2PZ5j5nCg5vzhUb/SzsXznEC
	owCQ6PQVQd9zIkmaTw/j9yYY8SPzm0YU9ivjx0DJjf0oZKsAcInragqlMTGwVjA1rPf
	AE95Q0UN8j9z3XrGk/ElGmugvEtQoPvC0w2BCQN8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652208419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hWIyfBw/C86WBwqeRhfGZrvuHaH1+JKXv2lLUafsQ3g=;
	b=L3glWcQwkA0bRT7ygocLOGL97UqVxW1EyeBg+rq9XgrpiF8qdJcNR8jEusUd5wDo
	RVnAYwfcS1I1Ge1/unFHG/zLxpWIvLE11BfK+xDqiSuAv0cyboaNX4uht1OlNyg5J+k
	cnzwEsdIAyHl0+0Dtp1WJkGA5j19DcuelRO1s2R0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180af4bc22f-15747964-b6c7-4939-862c-b10d224afd8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac172e3d95ee13eae85de30bded58f3cc3d00f5fb01c1bf8e357b4a565929799
Date: Tue, 10 May 2022 18:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652208419
