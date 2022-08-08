Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6445B7A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659986452;
	h=To:Subject:From:Message-Id:Date;
	bh=SBJ4y1ZPLQynyVOCg/LjJoB+zfYUkuU+x3onSGaDlbE=;
	b=VaApPlpojS0EVjyslYkk+VPlt1GWJHhAri5pQkb8X3MHWonlnLn/9jPtWrdCxN9S
	ZfeFalYg2SjZESdNaOPGqNsg1vlSvWYLdAlLcjxODCZswfah69TK08cq+a1TymX8958
	inn8K9YPQ4Hn8YDlWb6tQYsKKI58DzVANRhQiHPA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659986452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SBJ4y1ZPLQynyVOCg/LjJoB+zfYUkuU+x3onSGaDlbE=;
	b=RBfitMhBmlMJLR+Q5p4gaNI87+CzPhzPDh8PIpvy4Yyb7dlhE2idZy0+uLXfFsqv
	pNxBC1Jgt+m7onQFnj+WOBbhJprNDtJhZfBRmbLKJGyALFfr0cImdaB+vLSTwIu8o9I
	PDrwXAzgmLejRmyeFbnA6puGwCPDE0sgoJZM5aJk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827ee7206f-dffa7a0a-fd3f-4c9c-a144-6b2a7040e984-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1142ec38ff1d8e7ea0bfa22d3409709c51041dd94b59600f53d49231b1dd2cc
Date: Mon, 8 Aug 2022 19:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659986452
