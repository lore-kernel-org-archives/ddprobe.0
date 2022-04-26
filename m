Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004467E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 07:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650959998;
	h=To:Subject:From:Message-Id:Date;
	bh=2DSmpdCO+p0hyj5Kjwy7aLQaTYCkAGrAeNuECWG+Phc=;
	b=eM4hYj7YL8XzSNc06hVzNOaWLo9rKtSciHVVT1LBz9A1bxANPdkfuviNtlZZeDZw
	/FCx7rCd/4sKUSRls/A1pd8tj/Gl3hWx6t1v4pMTEuhS6BQ+pFWwZylhc+VrTK2BjrE
	bsODrNOa8o0rWQNBQGKzJqLVvFx6c4V9s18L3QRI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650959998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2DSmpdCO+p0hyj5Kjwy7aLQaTYCkAGrAeNuECWG+Phc=;
	b=H/kntGar3CxLtLycO12AcOVcp9g1B6ZffM/nsmDx1o/Uvy1Dy4UhgY0Aw2v0EFez
	GMiD+2tGIezUb4UyE3wfBMHmTjZRHvx4PrqMD2NQuqI/fMqOfhwIGx5FotSHngA1DQC
	aPHiippfHIT7IRtVFqNjinMFLK/LYXrtgi3zO8eM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018064e25d75-5008f6a5-f485-430f-b1bc-84c1b2619763-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 004b2f863bd4f9c314d23974b76afe60037e9faf8a858f810932f28aeb79ae45
Date: Tue, 26 Apr 2022 07:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650959998
