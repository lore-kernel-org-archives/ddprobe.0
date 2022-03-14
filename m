Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A600E7E
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 07:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647243984;
	h=To:Subject:From:Message-Id:Date;
	bh=FWTjZzXF+M4d3HlSasHy8inJ3dJ2W89W4EbWsajMoU0=;
	b=R/3zJsSfcNfAIGCVeXHSY9ylcz4ZLYc4kHb024ElV7g/FSaPw8t1Pc8c4xB0aZ58
	YHjx96+UGlNgxPDnXEonjaIRvlIKX54aHbpdwkVCGWhUdnBIZXscsG6YJ7O0K8bAEFu
	j/ooNrjIcspWHpZu5D1LbvdhrpzeLwrKblfZpZbA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647243984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FWTjZzXF+M4d3HlSasHy8inJ3dJ2W89W4EbWsajMoU0=;
	b=h/PsyQ4Lsk+8PgsBHb0o1P2eRUfu9UZ61MDY2mowj4srU2gqiebIsuQ1HQi9wpcz
	pHb2wK6vtlQtIJ/BlMwwH+ei3EPHwbC1lEn7EE6CiJBJlvPHDmHIfkV6xW6yUDBmyj2
	CewIoeN5Je2jTdy86vSJw9d/7u1IdzGcX3b4MZlQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f87647f5e-90d53136-7d7e-4d3b-88ea-75824e3ed8ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5afcf805f49b7ea7df4032d7f57aacd42735ca6ebdbd979cd0c7c30788965be3
Date: Mon, 14 Mar 2022 07:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647243984
