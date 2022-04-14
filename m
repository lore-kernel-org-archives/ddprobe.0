Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EBC7A
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 15:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649950498;
	h=To:Subject:From:Message-Id:Date;
	bh=5gb5XOV7SLKmGVWWoksTv9F1ovAKAZhmaehT/4tdRHI=;
	b=hwMEi2vsoTf4JRVAhMgOkOqhnItc3MH2fjQkq8UXemm+h3ZKC2hYkk6q/R4bz8Zz
	P/nvXLfp4XxboGwX4oIy5+GdZ3ExVCyEFLTg9oOmyzCnV3CMRBaArsMY+bd6qmBWGWt
	293pUzoeuHEjdFbjQciL10Mxy6uXjPXulBdPKcao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649950498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5gb5XOV7SLKmGVWWoksTv9F1ovAKAZhmaehT/4tdRHI=;
	b=eHEPQQzUKFfijsZc1B4KOTFWmiwglCXfJxfEfqkxnLq1mDZhD5ZNnBOJPNkt7PPV
	j5qQhs/p7mChKXhVC776HrzLlxfg3gReTIAXd7pNSpnDslCpXgtfrn5L29N2eDWNWau
	ge+bu35lKF6y1T8Kz0Y3tb8I98tmfEgCx1mvqsCY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018028b69e20-1339ebbb-cf8b-4125-98eb-c17610654a02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61762ff5c0f1b6266673b915915c04687774740a631661af806748fabe32cbca
Date: Thu, 14 Apr 2022 15:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649950498
