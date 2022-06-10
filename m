Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083D27C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 03:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654831499;
	h=To:Subject:From:Message-Id:Date;
	bh=NCyVYe7slAu5DfCIYy8abyFDmDssDHEc9SyVA9XetB0=;
	b=iXLOdol4ZIT5RYW/uK2xGfhuwuVNjtjkel5K8lmAwV3G0HjOIvTqSeTED4UmDb+6
	jHo2aA57gEESNmUTlki4oep5/j7aKcDY4DyMhcBcW8jcUaYKh+edessiEG7GmP/Th2W
	q2YyQWjEh/Dt6h8M1YxkvmDm/83zqcgUUSRmCGrg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654831499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NCyVYe7slAu5DfCIYy8abyFDmDssDHEc9SyVA9XetB0=;
	b=HrGEBXTSQ1TwyPgd47pKQbSXvkruyUCMJ4Y3YnuNZnB0fJAvhHQKir/cX5WZnc1w
	8kaZ8q6leYxbm4fo7GGqtkR27Ye9WsMDqE91UhitKGRwi4qedQID8hqpy3ERps8FgBJ
	JTLIzw5NTFs1yNSsF5VmrWDDW3g1x7kDlzDlsYM4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814ba4c7ef-8ad15aff-e09f-4ce1-ab57-c1b88722e65c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa06c2ccca2e31681c8496aed3eeb6c920db17f53a8ffda9b9c196995071000e
Date: Fri, 10 Jun 2022 03:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654831499
