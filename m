Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1D332F46
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 16:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647794185;
	h=To:Subject:From:Message-Id:Date;
	bh=tPVun4bXCIZdalTFjuRY+pAO3uqy55/BZn78DVVNGok=;
	b=ALB6dVhD2sHkl99eRayJ9Vd6EJVE78KfUlyI0/oHdR9kA5KVCW/tWgcfgC7v0o8N
	wcyVx1kKl2d5k4DpN6bKqZwO9iYaCfFckuKLS+pbzMs+Z5EFNqdO/5KDQ30d2HFYDqg
	HBKlxDFN5cSwcTm/jHMn/Ruo+pwCUw2D/wtsG2dc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647794185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tPVun4bXCIZdalTFjuRY+pAO3uqy55/BZn78DVVNGok=;
	b=JlBy5+pXsafBh1DJKuii/NTLIexRAAO+7jTmBUg2RSBzNaXcZ0m0E3UnPE0yBKub
	IPmAzoNsOL+jdIJiVSSAIuR4n/r0x56AHYl6V6N3YmeXz4l1PwjdmDuYlOdLwQQQW4b
	FyJ5jiycK2glQxcfAfiKK12e0SHFpp+yd1LsbHlM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa82fe247-8110bb52-aca7-4817-997d-31ec4c388616-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc9d2a08c1da8aa82ed6e8966c30e6c736f3418c045b7cfa6ec4dd6e852f90c3
Date: Sun, 20 Mar 2022 16:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647794184
