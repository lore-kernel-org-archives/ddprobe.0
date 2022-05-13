Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A01B317E7
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 00:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652403539;
	h=To:Subject:From:Message-Id:Date;
	bh=0iMp8J4pP+s+FaDKkPgOBnauJTP+F6Ewm3V5v9jORjM=;
	b=S4Her5azVv/ZsnUfFJyzfs5QTfYu7eJZipIHkhKY696j/KVgYzF5B3O+BFwdkBX8
	E8PyriMLcDKtCJ9LkSlf8sBTzGtEUAHbbicxpKTfRH2VyCzMCUtTWMy53GvYRpkHeOg
	wl1FEIkaZ8KPPHqeAT17ZMTdfwtWhI+xg1YN+P+8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652403539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0iMp8J4pP+s+FaDKkPgOBnauJTP+F6Ewm3V5v9jORjM=;
	b=HWp+spoq1Nt7e85TB9dvRem319l0v8K2IYOl16g4KtPq/7/PJeRWf5A9z4Fp7VB2
	W/i2neyZuSN023dNqLUYwQ6U3w0O5+if7vjf5w+2jFqUz2MNieJtZpHUP4Q7GJcI52E
	SqO0Ma84Hyg6SqcFc/F1Nsbj7p1k4ZBwOOCHtCkQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180baed0d8c-753d40cd-b986-4af7-9e63-3a890ad62af1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90b05bd82b3fe4e3587b8dd92783479c0c4c82f2b22604cace69812f65f05b2f
Date: Fri, 13 May 2022 00:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652403539
