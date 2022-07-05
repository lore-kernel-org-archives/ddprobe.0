Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FC36027
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 22:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657058812;
	h=To:Subject:From:Message-Id:Date;
	bh=vYXKsyFqcU0+EwXADH/LfnkHRxMlScDGvzn9jM2zJnI=;
	b=AMR5W4Qas2NB7aDb/KI0Z7OlqP09LE1SGJcxtJCqYMZ905w3yn72Mp6Ne4myMZJ4
	dJBpQC9OW2OzLVC33DZwlRi2EmGJwicbSAp3EguNn+sU1QIhf60qcSCYJGDSLGPrsUo
	7dd/sPBt/UgiwIfAWvkMrKdntIQvNIUoTTV9TtMM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657058812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vYXKsyFqcU0+EwXADH/LfnkHRxMlScDGvzn9jM2zJnI=;
	b=BhZaUHuDW9fK9WDa1oHLsV4sWNcdnzixWOcZowcNsDA/RrYjnnR/m4RQr4TlPIL0
	SIBbvkiJ5CuNqehBQ66sOxeMn1tAwd6icMcNZf3drL6TUJBrghmefUNlZ1wqyxs5g9F
	xxXDCyU29D8DqMalxEtTizVB1fGMQylfn4x8dz1c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d066e171-846ed13d-b4d1-472c-b532-c2f961258f91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bafd2f4e2f9fd11cd236c1e7c18bf2ce217fbbdbc2b22f02862acef83efb7b19
Date: Tue, 5 Jul 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657058812
