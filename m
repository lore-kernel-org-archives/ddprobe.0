Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F00ED19A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 03:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656215212;
	h=To:Subject:From:Message-Id:Date;
	bh=qCWdhFPTocjghSiQ/ouvcjpDW3TU4ZJdMXi96ZfKDoU=;
	b=AXl9ZCmAAyZI62oQFqFT9CeIr+gA+X3IyuwEoENXKBbeZPngvWEiufgbre/EaN43
	TtfoxR2bHqhbOCvztZxn+fhaao3ucJMHVb8LLxNGByR23yMutFacitHzgV5pIAjIdKz
	DgLKmfS+CfY0h0WhhtX8wlgwZV5RlSjsWe3EhOAo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656215212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qCWdhFPTocjghSiQ/ouvcjpDW3TU4ZJdMXi96ZfKDoU=;
	b=H8bYzmtJCCDAzHM6gYm+K6+pzmS7bZk7mdc6g2aOhQBinjocDPOl/+kSejC8m2ad
	W2imtlVxQh9g1/vT+pqtlQhAXVpHXQ4ZeWjCQm+N4T1HN/vScoAGObjXaSj5ncVuQ/F
	CwRJFVtt3kFAhQ8547fPCuSCb+ijZnq9MBKMlPhs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819e1e90fa-929e650e-3c73-49e2-b3b7-b8af8b94bfdd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cf0b1aea5ec8afe6f50fede34d73ed27754a4938f6b46a292780580fecb3ab8
Date: Sun, 26 Jun 2022 03:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656215212
