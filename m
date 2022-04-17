Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E09B7A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 10:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650190318;
	h=To:Subject:From:Message-Id:Date;
	bh=vi9j0Enbdth7Riil5S/dgfdVFiBO82S6RGest3iEIBA=;
	b=HXZCsi8BWxrFDedD2j5nI42pGnqEqN8RAauJJDfCVQvSilCXAcLAtek9tFooxyfO
	lV32Ce8LQwigSGPK4fS0EPvoXe2zZZF4XvL1/7I8HTN/LJX8p+8MVF0l6yCNyzbCVtz
	9nxBcaqHy710It9eUAV8D7Uk05MkYTsMNjxlhq6s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650190318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vi9j0Enbdth7Riil5S/dgfdVFiBO82S6RGest3iEIBA=;
	b=ZtoDigpnjmkWpFDtO6m2beYx/Yban54HMdiT74+F5aEwBbvUv0OMq0BANQJFEC7K
	W6PXNAr+msKIWqbzV48Gk0G5s4y1LQvg0ic7xZjpnk6hG9WnfZFZFodqozSGbvjjF5T
	Sfiv6c73FvT3jn5M4Z49I7zLh+0zFRf+EZCN69mE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803701fa95-6a33eb33-1dbe-428a-8703-6c05332f5fe8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1784b85aa09c2bd6c04b70e0c1a1b042cd596626e17850ba396d78565d45d40b
Date: Sun, 17 Apr 2022 10:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650190318
