Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F68323C4
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 19:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656013012;
	h=To:Subject:From:Message-Id:Date;
	bh=mq86eVLekRzOp6CECms6H/qItSLw4D3nqYEzoiPrAzQ=;
	b=InryJXlc/srK6n3RZpCkxuyryWTgE1Lazy2xC1xXEAuhuIe2x2UpCNI3bNgi3+Em
	JUclJBXXE1kQMdPtC/4aWVSqvWHTbL/o6p8j7MTVst3zcCWB88KWmEnk1lRu2XFPBDB
	/mf/kltwqIsJonT7AkBE5o/LtQ/TW+xVdGE5p+V4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656013012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mq86eVLekRzOp6CECms6H/qItSLw4D3nqYEzoiPrAzQ=;
	b=YJ4fe2yJFiB73bBFeyyY5ZF8iIxkg43EIIfnXqqXvi+uJ5yfEgzWA+J8oH8sGgPc
	XZ7rFERpWhmYYGWX8CKTCO3Kh/OMZNi5hCIxKRj8eh/BoXGZ7KDq8PT1A6KLNS0c3lO
	YhpgLp7NqW+4W1sAIz2I53E1VAzK1czyDl7IL3L0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018192113d4c-f588e9bd-4278-45df-837c-e9e45c60cf87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5c0b78f482a88f6729c42067be77b55dc29620ce75ba9fca021bc81f390a7d4
Date: Thu, 23 Jun 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656013012
