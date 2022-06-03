Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3FC361
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 00:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654215119;
	h=To:Subject:From:Message-Id:Date;
	bh=x3PXFYzJQw5yh/7CgzrmyKI/YN+YMaq4vaiUYWjUdYc=;
	b=arky1iRAp9jr48vBCefvm/pc07h7B1PDTtEA56nlKvgz/EZlUntKA5PXNxh9Zb1G
	99M7nHByRgfCCCHMu/ppYB4WQSY7FSQfpJBkut6iTl2UisOLvPcTTNpRrKFQ3luh+1E
	o8B7H5O77cXjqVtcLF4Tcis8AkEesd1aXKAjPk9k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654215119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x3PXFYzJQw5yh/7CgzrmyKI/YN+YMaq4vaiUYWjUdYc=;
	b=A4eKLqpepz0r7i80REqrKlqL2qlVF0wXoxm4Mz4TPx04KYmwHFlQ/DpvWlEai84m
	V1l/cliLLCVI6WqPxmwaYjJ+Bu27qnxeVZu9MSsjgP7OX/nm2n1UaGkIMlNFFyOgJVU
	WlZN2WzTVqu9YL2WfumCRAVCKH4Wmfc+OAmPSRzs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018126e7918e-07bbf0c2-1d9f-40fa-b18f-f27b8c4449ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2059ab47ce5a37b65a5eafa86d1cd1eba88f24969861ad20906a2f36803143c8
Date: Fri, 3 Jun 2022 00:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654215119
