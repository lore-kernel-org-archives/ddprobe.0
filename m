Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2170E1FD1
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 07:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656835012;
	h=To:Subject:From:Message-Id:Date;
	bh=yCtO5xFc2xFq5wmS72cOE8xi5WUeZmKop06qKByaaKo=;
	b=FlmGCezlQgW6zfTCOrPYoL1hbdFkh/AJKUmUSspj2pocRp8YzDxHm7zMf9MAMtF7
	s26W8IG9EQVlYeOIp+lGCCb+I7QTB3quqIDXPsXhwUpeHaLsWsxbhy48ABVXPfLyNhz
	wTtWGSK51pVfl2FUZ9xAP0sW/IboJ45zpDIl1DNA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656835012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yCtO5xFc2xFq5wmS72cOE8xi5WUeZmKop06qKByaaKo=;
	b=bCUwmFJ1uil0+dH5oOcSU/0t1cRVLgyCG3kxz8eCGtQOheCyMnMsTQARCscCKjYD
	cAk2ypxkU0YhRPexkNYWoJb3/jcqcxqP4AyWtYJqqYQGaB3oh24sr1RfzQhujlRD2HQ
	0lArvwEHYYkRvn4XrZ+RUL293bse9WlKI79T1BB0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c30ff725-16b5fcff-2931-46b8-9ba6-86e9b2e58a8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb0b2bab603d640fa607bf0439f3e5a9af47d94d1f2ca63c92ed697b47e711c5
Date: Sun, 3 Jul 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656835012
