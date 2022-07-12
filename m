Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2592F23AA
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 02:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657593412;
	h=To:Subject:From:Message-Id:Date;
	bh=U+9yyD7vR5nYJQxF6ENhmLLvobr7sdltRpjI0PQ6tTg=;
	b=EYFGBCHpytsQngkfXFnqmOeCeCmn5UFOyrZDeQfVO3Ef4I7nLRWsXMil81IaBfsp
	QLtLB6vGnlgBqUmDflW+vgMAv9ENqp5xtXEAda27NK7LSjkSGWi8cRYrIEHNl3GIkGs
	HsSRE1smxYL2M8eQUcTwSyZbBykZ5S3vItBBFV0M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657593412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U+9yyD7vR5nYJQxF6ENhmLLvobr7sdltRpjI0PQ6tTg=;
	b=WYxHgvaUZ6bXK0viIiHXLYdHqW/gU2RlGKCBCjXT/ZdFLB4y6J0AU1mqTWCEfnPE
	eTh9QpP5fJ92O2GJXKJ9FKPVOEbYu9iQC8dmYNkziVEVOzdPlJRTsT+lK0ONahlgc8i
	BZEOGoQOp7W6+KovIQXrC89DServyjOShctbBZmo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f0443af3-96554463-c4d4-49c1-b06d-ab456bdffaae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a608ec48f9112ac1e012a6592c2e69511b18779c760a2020b8df288706bcd38
Date: Tue, 12 Jul 2022 02:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657593412
