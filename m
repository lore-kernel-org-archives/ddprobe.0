Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 822B2A44
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 08:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655799059;
	h=To:Subject:From:Message-Id:Date;
	bh=zOxxyVL6ux3ox2qD+3yd7Cd/awAlVoDdfHVDPURVtL4=;
	b=QQJF2FHDZBgc+kLkqTS77U5WfgD9ukF5Oss7qHCQxGQaouG6vWjbZtO7cm3g1jBk
	kCGXi94aarwHl5rjLv5fJYpMONe92/QIEBnF7TUuEsNPcm6yy/1WpcmqeaMO8eUkCAC
	mB1GqW3wO6KqH3Tchc8gWm3njHOaaex6fTfZGxYs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655799059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zOxxyVL6ux3ox2qD+3yd7Cd/awAlVoDdfHVDPURVtL4=;
	b=Fo11jD+RuPgfxPjEhO2PS6kvaLtlpnt+c2nExEgHcPBz5A87hFKhzTUWLp71p46g
	7rQ2XeTrTM6Ioz/ZBQHiSfJX68BDl1rYbNKH7wq5VVmMquNbjN8tkiNqK3MyPh8REzq
	TGX3pKGQnMjWGuOjOVai9mOs/LMatnAWGpOd4WQg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018185509309-bc0cf964-3258-48a7-a3ad-2bf82f239598-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03da510590a03f7f4adbedde84ff5ff819578c66549276b0c08602e5384c13e4
Date: Tue, 21 Jun 2022 08:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655799059
