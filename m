Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E21AB3236
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 19:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653335099;
	h=To:Subject:From:Message-Id:Date;
	bh=Id6S4jLbTFgBgetktV2NOAE1jBHX2X4bOe729CDyqVw=;
	b=AKCSChECOzMjvR6XNRfnBguWTCjEVa1cJa49pWzxb7Y3BRRc/WQfYPtmFYBDG3as
	PTPvjV5xC7PZKei0I0fKFEbDCWK23M7yW7xt4Xp7lkn+r2HPHKoN52WkZfjhpklczza
	qdMRsOy6XNuSADOnPdyJpdbGqRVNEtuflHaYLhb8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653335099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Id6S4jLbTFgBgetktV2NOAE1jBHX2X4bOe729CDyqVw=;
	b=BmK9qZ/+j+kIjl4ev79LK5lDubib68uieAFdG7jp3RMpTobYUpvGDurTHCalHSJU
	ZY1kdQmW6Gt8+vBJB3bDas016m5YQQaYsxBKl2eVMT1nXXwvp6bQ7TBDekE2ycUTwvS
	6Si0K30ZlU+Nq8+P3KuGakB2JCcan04oOwAxcTZI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f2738764-eed9a359-2879-46de-afd9-3fb23c2713bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1eff734a1d1bcfc854105c833006fab638d4aa29fd7cec84fb0387e9457ada47
Date: Mon, 23 May 2022 19:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653335099
