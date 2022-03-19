Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E399018D
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 01:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647654985;
	h=To:Subject:From:Message-Id:Date;
	bh=WnTayA3FaJ55MB9zy1QsanBlXD524uWLXCEamHbkbis=;
	b=DPZyH8QfxOnl2Toe22LHkJB+B8kdLP1DUSbLwHaUPw7sB5azqHXxD3RyicQInzbU
	Iquzk6khLY1jNY5Cz2weYQ55yUC0fF2zoTM9eZdqJSV0tuYee3BcgY3uebomF+TTvf9
	hpe+SNjLtsASqlOmPBeAuuRABnr4oMEIoyJzsQ5c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647654985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WnTayA3FaJ55MB9zy1QsanBlXD524uWLXCEamHbkbis=;
	b=cLR07TSNHIJAzrn1ERBTwsrarEUwR9OWLtYizjT2NAxhLZzFeAOZsm/F1hzOG0Lh
	ZYpsQRLKHLexnQ6e2pa+J1tkfhuwNzVWoL5GAuc9lC8xUo0ENiqhllWbvWR2E59rsHB
	pT6udTxR+JU5ZhhxCiCXsbTAtDT4+7HEdtKKec5M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9fe3dc2f-b38a01af-68cd-4bea-9e29-504cacfb7b51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0afbf886246abe99ee3e8e8837efa7f47f1deeb14cda487c6359636e0d1a431
Date: Sat, 19 Mar 2022 01:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647654984
