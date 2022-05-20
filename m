Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F033206
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 19:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653074879;
	h=To:Subject:From:Message-Id:Date;
	bh=jMPq3xLpMMlARza+eSQwqytmuqCHkZp9rUsbY14u1E8=;
	b=WH/mBxXvbqZCJFPX+NYmIvvP8fBjWRKJ3ahPZSP5HeUYYy+JRcxTxArRdzUsGYYb
	Zop0bep7a9TgOuMUuun0nVixf+1K2+8/Tow8AVeOpqw74RcmRJ8Fw5gNySMVKsu3t82
	KEj8NfFwJYS/DbU9+ASNWD+wm+QZBSYfxFZ5TVxY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653074879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jMPq3xLpMMlARza+eSQwqytmuqCHkZp9rUsbY14u1E8=;
	b=PpbJiY9TFiBVo2McZwy1yxJQZT446W+uokZPUaP7fx55vTFD2io2a5jjRoi6ZzDb
	rZVFgKtqG4QZQRhNqhqWVKva5yGOGUIXiAq75ii7C2/E2Cv7E+NB1SBk1S2Pas+W4aX
	BXg8BP1fT0yVIMim5MMVmjMnAnQOiVwds/BuCdio=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e2f0e352-adc08562-8b20-48ee-8ad9-e48f1801a029-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53b8c4f08da70e73866a1a8e7dcb3f97602a1b10bc8b8c95f6e4d49f717ec5c0
Date: Fri, 20 May 2022 19:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653074879
