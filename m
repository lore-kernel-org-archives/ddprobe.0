Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F18E7A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 09:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656407212;
	h=To:Subject:From:Message-Id:Date;
	bh=3C98qv4WSMoLN9OXOztT/OCjkhAuCNMw9K1MaI504hY=;
	b=Bspwh2OlnINXah6bMjA2NVtP11O1MBa3wfS3vDW8psknSpSrQlCACChb8mCushRu
	97XcO3k1QwM+WgiwFW21N+OV1NfErgiwbltQ2p3HKrQic4O+GNf9XafQP3KMIvmdAoE
	RBA91iWXWqCSHT1j9hiJpppleTn72L5HSRASLLeg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656407212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3C98qv4WSMoLN9OXOztT/OCjkhAuCNMw9K1MaI504hY=;
	b=hXcPMxiGttc6NF41Y3jr4ecj2/h2ZfJ7wbPaTJ+ZsMcavrxO9l9tvDo45gbMAQbW
	VSuuZQjwvTCX6MxtApuCti2L6lPkxAgAElJEcIIDfAMc4vwOqa70Ic2Vp0l7LzkAGUQ
	h7Iv7OrNAAlSEyNZBg9Wqe3A3lmXIpjSTe6CjGl8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a990417b-c29339b5-c2a2-4123-a497-d46d142ec2a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f3f5d020c8944951d283ac853f2bf8dcfd0415f266687ddeeb53dda0ef6c46e
Date: Tue, 28 Jun 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656407212
