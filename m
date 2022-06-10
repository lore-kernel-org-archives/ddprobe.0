Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6877A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 01:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654823159;
	h=To:Subject:From:Message-Id:Date;
	bh=D5B6JzTATA7DOd9FiJy8ODUu0eNt6AoVzXqc44iMj4s=;
	b=h6U4PXCEjYH8eAbVCjZDken8A9HB2IsKvF/w6W+5CXV0gyBkpwSL0z32XV0HAdKg
	4h6zX793rjMIeZbgw+eG+2bCxq6bLBpKg50kLfQMO8nXlwEltVc8uSbdcePvY/+UpJ4
	7/xoLh4z45OwovhoPadwzO3jQ4bHyeyffPRMpwH4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654823159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D5B6JzTATA7DOd9FiJy8ODUu0eNt6AoVzXqc44iMj4s=;
	b=MnUduRG+0IzmVKnbN75FDjh7URabh0TPKZ8bfmDjHpJP+MidCK8lyqYs7+k/yrRA
	PGKpEsxvhawZwTpfejxmmTIoPJH1vRwwMuC1TOiiqoNGTa/9Qla0zZsiLbQVqf6kJa2
	iHrKvaPYDM3kOho/m/gNtLPnt3/eOkKblE0s/nkI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814b2585e8-cde3c90e-6ec6-42af-821f-588a2f2eb8c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94f395032d82701c25931271adc7e6790c17ebb2d8cdb6573f7b45fad580a5b3
Date: Fri, 10 Jun 2022 01:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654823159
