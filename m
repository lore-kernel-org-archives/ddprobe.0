Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FD14420
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 17:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657559212;
	h=To:Subject:From:Message-Id:Date;
	bh=+si4C1DiTdlgvHytj/N8xupKkyVQKv4+dfDS4wJIpv0=;
	b=YcorgTMbwJCXFCVlxneowL0STHpkBwV1WuNtkax7WOSEsTxJ5U3YI8Ez2eYiKOim
	LHidhVN09x4D6Qog72xmKQKfAcoOsKme/bVXesZPGRJDgYq67T/qoID892dZahbifA5
	pPWeisk0eBXCu5/6vzrxEiCVyAOEU8c6GTOI1mqk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657559212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+si4C1DiTdlgvHytj/N8xupKkyVQKv4+dfDS4wJIpv0=;
	b=VUKc1EFyHHXNDvy9H/wmZ/wvo/P6rCknfmp2bpnv1PgsnK8Bxmv+1lI3/0Cgh5QD
	wiQShunv9g6EEQDA6Yh9e6RxSIh0fTZZSRc4lqrD+HLVs2ijiSVgfYZuPAZdZM8e4zW
	d6XaIlFGTcIYBAOlCVKd7H7yKwfgxul1H9ONMh6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ee3a60ed-d0cc6a64-eab5-4598-9e91-b5e07710dc07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dab8f7f1ee73fb84f996f891f85b065279e77df68266045de6393ebf63506478
Date: Mon, 11 Jul 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657559212
