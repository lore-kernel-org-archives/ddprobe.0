Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB1CE4378
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647531084;
	h=To:Subject:From:Message-Id:Date;
	bh=WCtHLs/GP+M7+tarpiIj0yzSYVpL8UYfslIJITF9RwI=;
	b=NNFRfRQ1LZlD3Fy4JCCy6FsiK/DO+sk/9CHqjZo5osGFFHgtSqdWeyMSAH2SRlEX
	phjDPBVKnggBxBdx/RPe0StKS4i9cCf2k0ZTJ0XWNwCFemfj9Sz6WrBoosIbHPmkCQe
	laWG0y8z/gAgZs9EP7cpYKqVcWyGM4MKDArkVM4o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647531084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WCtHLs/GP+M7+tarpiIj0yzSYVpL8UYfslIJITF9RwI=;
	b=gpGYMkfZPeLyafn9f2TiBkqvszvzSXModgQUSMu0OrtEah3PbsHQItOwnOMx3Drk
	Ya97NIK77BXOH05unlSNp5mClJLVTfBzk4E9zL9vdJixX5qEBl2mXp1m5EAj4Gd7U7B
	UXn4/1zcz2yoIJvzpPsxk7c0g4ObsP/udWx9ujYg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f98814c08-6ff9a07f-ed5a-48ba-9003-aca40abf00f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17e90685edb6908a648116c297fc6e00d9951d2e71efaaa9392ccf066bb65b96
Date: Thu, 17 Mar 2022 15:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647531084
