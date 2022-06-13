Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191AB1396
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 14:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655132099;
	h=To:Subject:From:Message-Id:Date;
	bh=61mW/CBPIsxRr/yc0sYJtHLP3+ApYur2Lpg//DMPnmg=;
	b=eSBM63E3MjceMLzK45eZRG1LADy1df91d1eEqS/cVjWYF4jQvtAcToMrWn12ynBJ
	aRsxA13XiaOLYutEnopJTZwoK7Eq2Y/K+WH8zzxWCozHCQLFgO0ERoz7dPZWdSVibLP
	6cOmfm7KDSnPSESF5suDgM1zMy8e2WCJpUjP1PKA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655132099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=61mW/CBPIsxRr/yc0sYJtHLP3+ApYur2Lpg//DMPnmg=;
	b=PvGhPAdj6vbj6t/mCaYJFa1AP7tzGgstdOWLLaW4HhBJCAhCmvO/I23BU+mfKTrS
	iPBGpRE34CTWPkWWcciOzXzs3u14zgNFhzz7CHr9/yjAQIkxpz5WHXarN+O1QB2sMaK
	uYHND++ZLsFcLGHw1oDYioe7nPULRjf4YHo6Ph6I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815d8f928c-f7bb8341-8766-4968-978c-08818b32d940-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e56fb9c1fb337d9a4a60c6e042ff581ae575292223ad0f49b3503fb5d5c6686b
Date: Mon, 13 Jun 2022 14:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655132099
