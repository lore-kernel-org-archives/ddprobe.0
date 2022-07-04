Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 788447E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 18:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656959212;
	h=To:Subject:From:Message-Id:Date;
	bh=BQx/afK4mnHsCZOlCirtUwy7iq2p1n01G/vsxouB67Q=;
	b=F6kaocm235MAOD9TOKw1zlAIFwL2FAHZ1/aFlU+A4pchjN+b+7Uxxl4RF7Z49l9S
	6PEDdkF2VyQgpuVEfeRT2dabp3AKvV3Zz9htRBN8TEmdEDUH9/0T52DDetx3LOggq0w
	q7IPLevnVij52GQHaPDKRzz9oZ+cSG+GEyqaa1dM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656959212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BQx/afK4mnHsCZOlCirtUwy7iq2p1n01G/vsxouB67Q=;
	b=P+8VRg/mYfa/c/p2EP2EmJDW7k2XluElZeFUrZdGHpb5YubGnovHGp7Db/FxUbZk
	sw+KZx3LRC8cS2MFAjx2NHACyfhWS8FvFBiV/9IcGDV6tj4KN4cWqSp2KlSdz/MywGg
	l2UcbyCxjMzM2zFh4wEqxBvR3hhPvOhmUjVQdMkA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ca771ad1-1732d8e9-da76-4fe4-bbb6-a6ade7b98504-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0593a213a55ee944ab7ffc57d53521933bcd41f59c2547e44e83738ddf3a51a
Date: Mon, 4 Jul 2022 18:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656959212
