Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9B53D87
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 23:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651880158;
	h=To:Subject:From:Message-Id:Date;
	bh=awgYjYtXtCDm9Bvl6X5G4QD2IZRVmQ1TnUnVKMh4670=;
	b=K1ElMZWSSKBBcoznf+rnxtxTq45Exhi3oDuJFJbbhAYVY5MviHRLLrCnJnOqcYwG
	zm69P13zB0h2lEWRl5c/zv2+QvNKrkAscTageoX7X79h3mQkvDXbLN4DVeSRyYrbjsg
	X2EGbo6AYubK8YKR2jwuPFDRjTeVWbl9eNy2/BRM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651880158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=awgYjYtXtCDm9Bvl6X5G4QD2IZRVmQ1TnUnVKMh4670=;
	b=De18VJUfh3A2YM49zXU7WSofKxxM9XGP6udBv4/emdWFI3CC++A7OS4wYwSG8kvw
	CYEHNunFeiUHsg4jQDmdKSea0BVhHloNXSpX0/WWzMuAotv9p0M4yRZ20eFf0P29Kq7
	wZ1dYfgLKKgmc4FXwfswtf5bXWet+HBw63i8vJ6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809bbae43a-0d4b4ecf-fcf7-43b9-864e-17d1c8ac8202-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 005e6bb95f7bf9a1f166fe37a510cc9853d6395a62ebb67541c7e215f52de408
Date: Fri, 6 May 2022 23:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651880158
