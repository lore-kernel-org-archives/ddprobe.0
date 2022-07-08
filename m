Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DBF635
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 04:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657254412;
	h=To:Subject:From:Message-Id:Date;
	bh=9E4ZZ224mljSBM5ntjBGvbHr5FVX9dMr48w/NuaIJ/A=;
	b=QETYVpKCjMD48kcF6TMA4dpk2chDxCEObuDHGzvdy7WCYceKtFtL4mEArnpnlPQm
	nZPYVZRzMuiawC4kueil78scoOFoxmGdRroTe5mFQcZEVGYtxu0+Ed2tKlQQrURFtEe
	Va+FveloUNUVelOp2DrdQ5p5ZWpevjpwHSB+QSyI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657254412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9E4ZZ224mljSBM5ntjBGvbHr5FVX9dMr48w/NuaIJ/A=;
	b=O4BQkb27RxqZSlArNabc2a6iEYFPnRnxZNKRMgqq31i2Gzdji7Bsm8eDd8eUNAdy
	W5zGLQg7s1BmwRTUdDXQm4aveCj6jMoFusqjr5irqpygIy8SpfzPrVdOCctQKzfvEvR
	xY5kbi4iwj3iRccIHw/dIbVl3Rl0ZuugOhBtv/yI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dc0f7ff9-e4e60f64-a118-4a4a-912e-d7d6038ad84b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba5c662bcfc2c7ec24b73f08d5b589179d7387cff303e5523fe22b8d5c9abe01
Date: Fri, 8 Jul 2022 04:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657254412
