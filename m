Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86177257F
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 18:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648577578;
	h=To:Subject:From:Message-Id:Date;
	bh=kBgtzFZW00WRL0D6axL2/1ncyQYPNsyfOJBJwwpMz/Y=;
	b=HVPXVXoKWwsy891b8MqjE4jzgo4HnURpN1Htuigw4qstoY/TU8daE2mGlVoAcEBS
	HYXRwajLX5+TsbkNJB6icjtntRtcpZkJ7YSbPhr4raxV8j5/GGS4pXAdlUVKBoW8ZU0
	ifxDZbnn4GOWDYZutUG+qbyqmfdo2y3G+rYeqLgc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648577578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kBgtzFZW00WRL0D6axL2/1ncyQYPNsyfOJBJwwpMz/Y=;
	b=CRfF0XLCxkwKWOrwahXkQn8IS6c9gFtCAvOEmvip3qJiUIDT8kAaINSQiXYuYOre
	oFxLh/Ues8vsMhDM+gOy1qufSznQMBVhmhe8Lg3qKamMpRwfSE6DRd4EB803QYRUTFp
	eXXphL9XqHqWJ3eijkDV+6uvABU+qAeSqGdpcHI8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd6e18528-11bc8084-e38e-41e1-bfe9-f9cc2d51f026-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49fa9143f8b0ff38623d5cb973a09033efa2c50c9cbdd2b59076a4fb6256fa06
Date: Tue, 29 Mar 2022 18:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648577578
