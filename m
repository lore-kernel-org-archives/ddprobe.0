Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB9297B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 22:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655678459;
	h=To:Subject:From:Message-Id:Date;
	bh=DMSY5X0X5YLxeafTgujn3C4NKOre0ntgJthadsvasoQ=;
	b=LuRqxFIjt0LCPoL0CuCjyokbpSuviYnd+SeXxm3l6cXd9QrZ6B69NSMJa5L9xjrk
	62sboHRID8mKzGTW6vOmrBYnNfGQnoJYKynU5EQpeiLotGFKo9ve4PoE2GI7n7mj5Mu
	ooEKXXZJuKVQe7cF3lyQvQYbGqjnflf8Ocuol5Xk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655678459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DMSY5X0X5YLxeafTgujn3C4NKOre0ntgJthadsvasoQ=;
	b=MD8Do3BlgmUXHmmPiNYptY3+6cm4XSzjJ1Q6/pfsQXyQO58nKD80Yc5oTKd4GcaF
	K930+ftbIshXtRPes9llHJcRUPvN0jpHTZveVTshCIjPsaalrADwHOj1pSMWyOKfyAD
	P0Qn2EbbmH66K6b3oFmQ2xFg+OZQjMc1d9SBQRWc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817e205d5d-74a2fecd-0224-4a14-af3d-9ad8e0d9a1b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca3bc81d1eaf22618f945810df127a663c2857bc79627e90b0ad8f337fedd25f
Date: Sun, 19 Jun 2022 22:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655678459
