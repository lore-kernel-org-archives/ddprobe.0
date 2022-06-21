Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D302A32
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 05:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655790719;
	h=To:Subject:From:Message-Id:Date;
	bh=cK9tKwcB1XTLX4+HP9WMVgDLzYA1kAXXO08IPVqdso0=;
	b=gEVQWzyXfSD4YMs9ila+DaeX2o8IhfqZpfOoueW1y64mydoE+fpyX5XkorCL2n2i
	AQaH4Xam5l2lWEIuct8QcMpAbhNC7VRmfyxbvlqIhiRB1i8Kh/jlgYZoKEI9GvXlvst
	wmzDBiWeJxTpC2ixy2EJdQZWDb7TXQoKdaQ4Gtv8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655790719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cK9tKwcB1XTLX4+HP9WMVgDLzYA1kAXXO08IPVqdso0=;
	b=JGHGt9sBvCirdcIHMcJKC5r0G0ZeH7YTpY5Dlzee4FfnxYr1GY2JdeleYzwd0pZP
	lUOZDNzvGqUq+Xs1US/zYlHE/zOxohAYINCAxzK3DEC9aEAgmtsRxjFWaqoYH9qS7gj
	ZcBOCdaqmUxkJ2qUptomqbST9kEWYJrF3WkmcDCo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018184d15124-f6ee053e-986b-4f71-bca8-bf0e6b008e9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3eb80b79699fb5a7c81c6671a2a2c9a983248d8868492c5dcccc0a1bf2193bea
Date: Tue, 21 Jun 2022 05:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655790719
