Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9074257A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 11:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656414412;
	h=To:Subject:From:Message-Id:Date;
	bh=0bYozjkz4sa4unDg3PybQuQvRxHVDjXZf5XClhjG7SA=;
	b=CvX9fQbXKetMIoByuRn767GEcbDvAm/1faT2ndEc2CTXUWH6eo/+8y56cRcQrnlo
	RX030u80XYygtrsW1ceP/m3m6+0HO9rLPWDNNwLkHLLod0nkI5vcJk2YFfsNgIXFi51
	/bMpRkR9QNaY09hLFED7aBBhIR2Mp9IkN8q99E6M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656414412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0bYozjkz4sa4unDg3PybQuQvRxHVDjXZf5XClhjG7SA=;
	b=Ua6W9tvc5e3ol7IQFAoWeUCqnSOu7YlHkHF/nK9RvoaCrLmmCj21Y5mhkoXTao5F
	aGLEwPcRRjAtzDSF3szmlOtC+Ts6dewPq5wfJQlj1Zgy4RA8xdZXLu5l7hV5rbw9pR/
	lfwECbiHZgZpQn2PJBk17yrjIQFp6LF5QPOxsPNc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a9fe1dfa-ac8a27a2-d2ca-440c-84bd-55405204d841-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eaa47d2f0ecc691e3a2ce95bbcdabe93476e901af8aad80257d793fc5d443e39
Date: Tue, 28 Jun 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656414412
