Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AA067A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 11:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655034599;
	h=To:Subject:From:Message-Id:Date;
	bh=OztLmR64DSOXP6qtUL9pfL5AZk7qXq4DFLYalaMAs0o=;
	b=S7V+IXAXf6xWIDjNrwlKJ8p6OLLiNp0AeC4K9GQq1iV4D7s7u9kAQxyz/6HH3X/2
	KZ9PK1bpx/6uf6JvI5PuRi8s/MuQLPtISDdp2AuwbuGjJ4ZbcOHcj019AOTyeuEqaoT
	rxhhvKUaJpOGFT2J97/cMQNHdLAT7SVTM522cTB0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655034599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OztLmR64DSOXP6qtUL9pfL5AZk7qXq4DFLYalaMAs0o=;
	b=iari8YPXVDIBm/ZWTaoIeGuIaJ9KWmPk6RrmIGi7YqA25MWgpDCz6J44vvEMnNlT
	1+oOHQe6cNruZ+cwe5ADmDBk72ZGcmP24AEEa8oVe6dpMfRg+G0xGW5HTZIqfeix2XM
	k+DqsxrC5/2vBv9sYIw6CidvOTFZHU9tUowwrLUQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018157bfd76e-79ef97d9-02e5-4dd2-81c3-da057c2a63c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed6466396e772943bb90b27e303391a7bdab9d96361ad95504cbe218869f98bd
Date: Sun, 12 Jun 2022 11:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655034599
