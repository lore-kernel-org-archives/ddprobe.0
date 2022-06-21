Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148B04C94
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 17:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655833259;
	h=To:Subject:From:Message-Id:Date;
	bh=gKe54zxn8pATIu2GLKiuVj1KbQYsQ8DsajtiJU8K02A=;
	b=WFG/v46j1qTJNnivyIzWPWayH9uBX8mGb1O14V6G42QzefDRN72lewKruZ1RXFng
	KdpJ5cPsvyfoIoFOSEWsDgI8FfE/KN8o0koYZp+CEX1OV7C5vKWjxXf8ylv1y2XbNxl
	HSMayNXXEB6sxKNHasXggAbe3+sSoNfCO9Z6GA00=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655833259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gKe54zxn8pATIu2GLKiuVj1KbQYsQ8DsajtiJU8K02A=;
	b=ag7nYS8uPkqYP0GhbOf5cGiCQN+m0cQXQ8EH9ktu/N7lD21CQX8dWuNgkq3pKw4n
	q8cH+LG/8w2Jl9eSbQI6DMxiA5aKA13J0+6JeS1WzUcPetrwHpTYggE6+roKEa4U/tx
	9dJEQW7ucOgvlGt1QSEKCQpvwC4iYdoQ77xZtXgo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181875a6d02-ead0e7ea-0c39-4430-8c03-84649f44385c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f200eb0bfe1ec790f87ae1244c19231905e824f279cc672761d6829512c4db2
Date: Tue, 21 Jun 2022 17:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655833259
