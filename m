Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C36E36C
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 04:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652501819;
	h=To:Subject:From:Message-Id:Date;
	bh=up/Hc5VcvbxGGk/GQsntew9OhOC8uYEDUdQ3WwjRyZU=;
	b=ciWSWhyMC+O8wYIckAzQqwKsF8uP53OwpP5WZV3ecm7ALvB8tpPAMJC5a3avmGm6
	b7ErH5SAGf282K9byfSfj22W4O4H/lp019PABmMWvyE87kjs0/IFEKZnTzLLr0yr8/E
	wJvtVhMqILF0u+1DLmNtod+gohHevnLquVG8YnaE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652501819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=up/Hc5VcvbxGGk/GQsntew9OhOC8uYEDUdQ3WwjRyZU=;
	b=R7oHsU2HOdLPUzcySoSs5fwir1cquwfFiD+R4p2aRWn0fkbJrNBWdWk3N2JS/CaM
	4WNA3QFeQFrldZ3cR5umHeB2z5t16rdLKc07VDfDhwnDnaP/fQJpGleaVc9tJt2HGIT
	cUtwsE3qNw/IT11k0x9/s8iEq9b5Nz5UVtqt7Pzs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c0c8afc3-4dadb5b2-f84c-429c-935a-84dc5176b739-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04816b49258bb1b2a593e1c77155a03033edf26d7ef6d5e7dd665cd368016061
Date: Sat, 14 May 2022 04:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652501819
