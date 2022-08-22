Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69871256C
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661182252;
	h=To:Subject:From:Message-Id:Date;
	bh=vLqKkiX+4W3ka8yM0tre3mIgbmDMgNKQOu9bEw0R7Fo=;
	b=HTrvbzvTg4WFtoEeeeACkBbwOTHlnrC5rjT04dPrpuGPoB70ep7bDwaKnCyjLpjs
	mOT+Y4mRYjxtctJDCUuLUaoSlLStBT3+O5wKvv3rF/TPItfxqPWuBpL1hdQ2AyMKu8X
	mQ2HaBYN1njhi3BgErm5M594ZjKqAHNKuHAGAahI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661182252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vLqKkiX+4W3ka8yM0tre3mIgbmDMgNKQOu9bEw0R7Fo=;
	b=d4ovVAr3BRtZe1hHv7YZhO4bl5W1nybTiVjsZB8kFCi40KxSWknSzEnOXI5kDMh4
	7RZrUrDAU+02/0Mo4QMUtXg0ABb6NPlZ81MHpjFmOVNhuC33bLNy9Kw3e1PPkr9uNX0
	EQIwwQc12vt/p4QW5if6oBthbZkD7tWg/eoM7A0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c62d95ed-e29c7659-2c0e-4728-9b38-b5a037da2539-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dbcb9be41f7eea04a61bdabfca07ef3ee4c96c0f6ca31fcf5d3d27bbcd3a1181
Date: Mon, 22 Aug 2022 15:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661182252
