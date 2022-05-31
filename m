Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4957B7E
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 17:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654018439;
	h=To:Subject:From:Message-Id:Date;
	bh=pqI7cL6g1sdaZcul3PmIDNwrVLriggA1mduUCmKyQdw=;
	b=D7bKeTifIVHtcuxb5jkloQ6G1q7x4E7krkSSw7V1qg1clp0WCwXgd6Pq2ypnBZ9Z
	JTTz9OgHT9NHQUXA7rxQzMS2lYuO8NjNUGJmXB9n11huUsvP/A1BaXnNLMtyfC85sG4
	2NR5MIwCcronZxo/OTP91KyEUQaZyyq6n0jiZDV8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654018439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pqI7cL6g1sdaZcul3PmIDNwrVLriggA1mduUCmKyQdw=;
	b=V6u0Qy6V/5yiLJrMgOkabuvfkJbSDTOxBRsa+Z/iYIL3kqcA535+pF+MC80rdLAa
	rmswddiqWKIRKoauTnAP0nBm9lwZXFSTqblNX2+gro/2nq3NwJ1XWGUDdv9TaEc0JvT
	UIBLOKndowktZ7H2kecgWhFaDvxtKon11C/UsvJI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811b2e7844-e529fee4-f55a-456c-984d-5dd4463c01f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2749b5950f8a09a809f0088c25cf87a8671dd5537b54efdb9e24d604de1a6c82
Date: Tue, 31 May 2022 17:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654018439
