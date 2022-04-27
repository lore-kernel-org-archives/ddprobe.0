Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D94BC3D60
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 17:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651081198;
	h=To:Subject:From:Message-Id:Date;
	bh=+F4PWRJcFsYG32AGd37X5NKFNYFeS5mvKMASS3KsB/U=;
	b=FfPJOOTakrGNP9Jdz9bgsdNV1Y3uhRyMwJCl2VB194GhXpw8bcB5HOukAr67KdP6
	YWtdcIEewx9h05kfhoFaU/nUt56VzD/54ASZ7lpE0Naa/ZC8+ERTZ3KOmDfQh2RMDrD
	CDSb4J8U34wfRy+OLXlzzuz6/RiAtmbgtiZE8j18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651081198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+F4PWRJcFsYG32AGd37X5NKFNYFeS5mvKMASS3KsB/U=;
	b=OdJ4bGoY7tyw4OFWyhe3Z4YJjN2AiPkbrkSzbk+ZGlaU5hMx58l0al3rgGfku9rP
	5bU1RgGMhsSMWgmuxtF3NTe6+vcCFa4BGQUB/wNjP19gBFkHAWYiRnxMgXpjEJDxm0L
	nNUhw9aFuXPznWhO00oIrstyoTWKpjjYco6xbqBQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806c1bbaab-915c8e8b-88e7-4dd8-9a3b-fc4c5a480618-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddae11f3d6392647890f170b5a7f456b5f36e978f1691f9d69045c0b45cfe7d0
Date: Wed, 27 Apr 2022 17:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651081198
