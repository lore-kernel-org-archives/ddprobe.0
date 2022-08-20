Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FECA210D
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660997452;
	h=To:Subject:From:Message-Id:Date;
	bh=I1SssmMzFoplsCmKH5ayQBB8dOH5/KKSs4S21SThLwg=;
	b=bkPCA/8pC943v2uqI2rrGUSadFnMEJYSYVEiG6BQa7FAQO83KfRCmUG03fUfJCF2
	FvRlLjHrXKMbQwu3zWf8JK93KZhSwXxD3YJ/iLTmrcnZNnuJqR91lfkkfFu5/i25j6c
	jZ+6A4kJCzFHmzmyeEe3AbBHWeK7dNtFgvWRbYVM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660997452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I1SssmMzFoplsCmKH5ayQBB8dOH5/KKSs4S21SThLwg=;
	b=XHU+imb8oKwTNHCgXrOeGJ29kM3eDeAWTVUJAImOdsM4RcEovUAwXfdvr+R5dsEe
	Wf33wKTMPq2fE1HxP76AEzDIBz47DuL2erM6etjtI+wCmk0Ua7CJnYLDiiq3nxf81RD
	FLgPgU8iZAjbtPs7EGhBdf+TYH007H/3qG8OFszg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bb29c34e-bce6301d-70e4-43b4-aab1-cc7725d29baf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1470c4af301c83e80607f6e3ad07cbef79db43b921dc088f639b3e0af7dfa9f
Date: Sat, 20 Aug 2022 12:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660997452
