Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D8F1855
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 16:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653583679;
	h=To:Subject:From:Message-Id:Date;
	bh=EnCNPq/vpSi5ULahAO6i83ofn4/mKzD2wFXi2g2vJls=;
	b=ZX5CoxwGcYBwryA+YhixFCsOYPiXI9srL2s7OGuQYHy0j5L2Dzx/z6oaP10VIXm9
	ZR0eJWlGuCtfJ01h5quHxOcLSPRRyni5qcECOClVtQd/abyPoSqxov3cKM2Afrm8gc9
	oXpFhdoEZ0xH+Fart7d1aRmT0rifg/4wKAUHQCqU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653583679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EnCNPq/vpSi5ULahAO6i83ofn4/mKzD2wFXi2g2vJls=;
	b=QnGGrnARy+ItMOs1zaQVKVn5IPldopQ8IGsb7FhXMwImqmS4RP08xg92dVy7GVdm
	5Ui5avEQ6iEe9yP/6/QRXOF5iM6N55VXj9ozYZdZVExnSjEQ06Dsag3y/LsqzFty9Fj
	oUCTcNKaIOK0srwNzwloyLbY8ZasIRiRjsNfaqqw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018101448f30-5efff367-668a-4a2e-a33f-d1e642825b87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c457a770802395561e121aa41524b205b20c13533f4ea03134f44104696ec8d1
Date: Thu, 26 May 2022 16:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653583679
