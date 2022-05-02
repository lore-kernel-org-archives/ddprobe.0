Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474262F32
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 19:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651519378;
	h=To:Subject:From:Message-Id:Date;
	bh=OWyxJiO8XeJi/zxIpW9cbNiPcQaHm1n0DUBkyjuwjl8=;
	b=JySUcSaLsNTu9HjAX90CrRmAm5pPzE+LQlhj6hI4GuYoogJaY+tz1tUkhMuZboGW
	w3dHjpiJZeKlrLHbhON2yo1BJ/GA4e5YynuJCr9boPXa4l82aApXGfdjnEfqJcU7X9M
	n8RjH/5ZX1Q10R9oMk1+BKKEOKV5gHEOk7MCpcSc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651519378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OWyxJiO8XeJi/zxIpW9cbNiPcQaHm1n0DUBkyjuwjl8=;
	b=BxRUYT6FQF/xlwrhFgNkTqTYeZVsJGyP4jkggvmyn+skca9PXeycAvg/ehLcLAPa
	qN45o/HXx3GUvEeqxJmYAfy5V4HK5Pa1z1S58dYWxFmiVExgqdXJHcZ2wlDJzjRQcIo
	EfVwmnF9JPdmEyQZA+mQ54KfW3PzxAbYQbMfGx2E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808639d367-4419a719-b9cc-4378-965a-ca6195e91f00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b942ecdafef197fb0cedf97cfeb0a7453d6156d893088b0568aef4cc737c5a7c
Date: Mon, 2 May 2022 19:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651519378
