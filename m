Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B7B3D83
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 18:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651085398;
	h=To:Subject:From:Message-Id:Date;
	bh=pPrb4vIn8P+y6Bq4vQWBu3aQW2bEJiGjkpmu1cVqf5c=;
	b=gjZPtW19qrYoyWpI2u38b3MgUNoeP+j5Dh4ZOpCqXxjxU28sLdh1G9VcSVqjocWu
	OrEkhu4++ikNYsbDJSpMFSERjdsG5MIfffj30r/FNPi6yiD6zhGuioA7+EYuxLjc6p7
	wqTPlWGs72tLh5IZYE7QTKMNrIUAyFDfFbGYj8Y0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651085398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pPrb4vIn8P+y6Bq4vQWBu3aQW2bEJiGjkpmu1cVqf5c=;
	b=JdPrdW2q+JMj0+wKENxly1zLKkW6tEZm7eRGY39ino2X6odWQXFrfYozvkKaUaDf
	ph5nsi2kTlnwTc+3Jn1mD/FO4l+WRGkaB5l5F7rXC+t0+85zZtsiueIrMOpW4RK4/J1
	q5iKaskLL4YI2AVAH4iRiK0uPxYUYSD2b6v4bS+Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806c5bd0ea-9549b008-ceb9-42de-9d7f-4c3976a6bd1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32ec5f460ba9fe8657fd71d571463929cdd2b433c0a1c58edfecbdebfacb7e56
Date: Wed, 27 Apr 2022 18:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651085398
