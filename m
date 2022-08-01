Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9199B7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659327052;
	h=To:Subject:From:Message-Id:Date;
	bh=h+wEzpgtSF8T7nWCEOuC8syT9CUrttkSWwXUnMPSJFQ=;
	b=ZluhkX3/iH6Xy04VIQTKmuJXxzNpuxoGljixcG2eT1UxKYivY0MSjD/fE+CPEvG9
	t/8RdWQhNRq41nOpNj382qXLRu9RLrTfA2KmfpK7PIjszKagb+QwGdi16LBDd92+d+w
	7lS4Bftl7//+g7Oemb1VSkiqpaOu6u8Q70S7Goio=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659327052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h+wEzpgtSF8T7nWCEOuC8syT9CUrttkSWwXUnMPSJFQ=;
	b=gBY8kIcn0ywXdwqw8zheD/UxLgV/8XULSPfwdJeV41yhr2O8IA3Wcmlyl2n0mPXf
	2ZVGCc3XBhYPnBnlxUfsW5AJxWu+AEQIEkGN+zgfcd42b0EbBoAdAi9ZykvIMghfaA0
	qEIFlhBybhrqVQXJsSyWUgdmOm63uLBHduAXWd+4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018257997b01-bae715af-0a49-4765-ab21-be9d79c86e48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7504f7a333443fb2c238a31d07ab8ffc745daa3774a28f79eb9a1f66ae0d4b93
Date: Mon, 1 Aug 2022 04:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659327052
