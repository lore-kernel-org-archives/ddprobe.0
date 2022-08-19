Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566487B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660881652;
	h=To:Subject:From:Message-Id:Date;
	bh=hT22Gf+NzgZ5BeiaSbUJubW4bgPPCKTmNfUw0mFUyXc=;
	b=Zi590/F65KD2DUQZXe86zxzTN6bhlYksq5Lgs7ACTFmxR28NVpjDZ6CsZXn5Uf/F
	P/x+9SBrjRQ6/umgY4kW1FnDKWJcTRuPNozALNIuwPAMs1HCrEGKnvprnEYleyAskYt
	s2UtWENTxskJgz9FSR4UhlooTPfdHERQozJsNe7M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660881652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hT22Gf+NzgZ5BeiaSbUJubW4bgPPCKTmNfUw0mFUyXc=;
	b=QzGDYKlfOa35Lufs2maoZJiPLUU5/OvK9b6TcEh/dmhoB+t8I5Q60OCLmg2RlKAo
	RaTj9eY/dwruHgCXKYxDJy7fBj0VRGwHqaxHQghH/1/V0IFu62ytdVJ6YBhWknXgMOS
	8TKu951dvmUknJfrfWjhb7pQWUvSI9b6kzsYQkkw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b442cb57-52be1f3f-ef37-461f-8c2e-57400bc977d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d82b400394fc1d3f1886034c424189f117e4e37626f73acbd049e710d9416a2
Date: Fri, 19 Aug 2022 04:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660881652
