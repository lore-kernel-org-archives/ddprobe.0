Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7247E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 07:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658647012;
	h=To:Subject:From:Message-Id:Date;
	bh=uU+F9zEXzTsp5UVTDv2QrX9fZ3tkxKOwkfzRUx6xYlk=;
	b=VbYgR7SgS6xmrLOyFg6in8n91oQ7/fOlq3V2eO62jdo2XGybpcEcXqdCBCZsjXYV
	vUlve1Mldx4UvcBcdSD4VDHVjveP6b0ldQqtZB7ISE00pjrdoLpIn5rUeIQAUKtIFfY
	jK4aoRNt3rtJHwrChiDm/iB+TGwWEZWpCLOZvFsw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658647012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uU+F9zEXzTsp5UVTDv2QrX9fZ3tkxKOwkfzRUx6xYlk=;
	b=OhvX9wVy8L5DHndlr3YE//Q86Izc0qETe53dqxixyBlCXnVbmdvgBtePG7yzrVO0
	R17UNwMEmkqdoHKHE2tWk+fSVmVlwufLcEg1nRdVQTpe9XgmABgeEX97FGhJ1piw0vX
	p4GCLWxwGTvnyTnlRU2utCw0CWTjzgq1MOi5WNw0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822f10e3cd-6a6a5fc5-eb44-4006-9f5c-43fbe3284e90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 518aba76d7745fa2c68976329ba959bf4372df33a3b2e6a1e07d31b3655dfc41
Date: Sun, 24 Jul 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658647012
