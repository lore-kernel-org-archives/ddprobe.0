Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA9523CF
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 13:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656854212;
	h=To:Subject:From:Message-Id:Date;
	bh=Neqj54P/z8dXYe/AzuKYvMRjBXG3KcTj4S6VAx8jgv8=;
	b=j1R/2O0uXxrcltgIsDIPbYj8GmPivkatDsT6KDoV5yci2xPt+bCyWY4yiGnhbesR
	p+Bwe7zCaqR1vtmyJrlNogIx3eZ2Ukfr7b17/wUaJiiNwB/n7XiF9CaDSTupnSVlGOm
	O8TqrAFOFmGGrENmBMY66CbmNug1KQfycNSN42tI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656854212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Neqj54P/z8dXYe/AzuKYvMRjBXG3KcTj4S6VAx8jgv8=;
	b=jrQjV/G+/gsbbzxFbz7RMc51Frq+B4EYXYFkTMnX3vQk6Uq444oL2tRDKFEvSUfF
	AeQZFd3vcuR7FPsKqVubAaaYRR8hXWLvkK0PXoH+qEgbb2q2+VgoDo8FjHBK7eN5S6H
	aTPaTWfMKBpYfggzmi0Iy3rE9uYYU3lugoxYWuAg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c434eec5-a9a560b2-f790-441c-be68-959da48f4eee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe5fabefa73a79ec78875dcc391fd07984e1f0617f7c171de33f203653cc162d
Date: Sun, 3 Jul 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656854212
