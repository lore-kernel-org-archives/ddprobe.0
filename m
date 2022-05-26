Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7BB10EB
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 12:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653568379;
	h=To:Subject:From:Message-Id:Date;
	bh=O9Nsz9JPij9M/5Pwof51HNujWLeYq4VRfz+shFYv32o=;
	b=M45bC7AJCAQVJFKrAgrmNaygTeW1rnnPKuL6JH9F0auouFBoR3J2zUudnxyiBgI2
	gq3h9SK4CfoTfgBpYDiy1222SJyeXlGQczCU04L1V5/Zf9lZFLHDR/J/B4EDjHngA3s
	Pkz+mDPFyhWGczfwF6/5mT1MHxQsQOM6Ff3UFHCo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653568379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O9Nsz9JPij9M/5Pwof51HNujWLeYq4VRfz+shFYv32o=;
	b=EFRNtAW7bkL3IOvvNnyeGXpDKMr02dNDTHf0RbF67kpiDvdTw95zhx25lJPuMazN
	kIZjdJ3JWFjoZLk9ABKh13EoUQOH7+dA2+/yGhVTcdRuU4QhqAX/TpiuwVDIT4O72Oj
	Abn4EmDizFKdwOlb4NqzW9wA7H3P7xoA4145B/YU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181005b1980-89418795-7a43-486e-8be2-001ef599f410-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12d028342f8d81e349d13f6083d23bf4b495e798787e871134ad7439856f14c1
Date: Thu, 26 May 2022 12:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653568379
