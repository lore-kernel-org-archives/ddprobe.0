Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B6F3212
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 21:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651527658;
	h=To:Subject:From:Message-Id:Date;
	bh=E11Rp8u+cIMj369zVsGO+UeaG/mxRuc2PUJvUZekv5I=;
	b=YOtTYxxllMHOp7L7JNtH1027Qy/t9iFfrYsL2yWb6acaSiqFWCnAGyEQPXDG0KoT
	KKStQZ+WEgU/1BK0sz7BJKMjbklpry3GAI/yHCJus8+99ay2gmoi8mhVezB6jv7F7MJ
	2QjsmhDSK1oFQMvA2+0GOd4INDTCwIqR2mrkRQh0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651527658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E11Rp8u+cIMj369zVsGO+UeaG/mxRuc2PUJvUZekv5I=;
	b=BdQj43U9C5YZ2Xd95aKwzedgDobiUGQlHPYdyDYcUjIFArrbalt1ENWayWpsRFOy
	09Pa3wbtGMQjZxFg9WIbK8tFOntKuB87FuqBl1VrvgKIlZa6l7itSpnkew5TAifSMur
	BK5iuy8Nbbb+iNQvab+IzJV0Ny+HcwSoa0kkWu0E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018086b82b09-c75a9fca-3466-489c-b117-520e1580c97f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3af38d2ba8e341bb31e04e60f5e2edf2bc5a1a562a883ae4308cc33f5c23fcfd
Date: Mon, 2 May 2022 21:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651527658
