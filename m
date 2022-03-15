Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 831381B75
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647327985;
	h=To:Subject:From:Message-Id:Date;
	bh=zpULNDAsgPK1E5CHEodXtFKN6CtGXQjhH4V+BguFnXw=;
	b=Om+qu1lLL8gaCS8BfSh1BC4CPiYYzZlxxoSZXYllcVTOREYDTt1TSK6vnmF9wlgv
	+QAXImJRfVB8aUbX/bQv5qgLm7E+86v3Q0LBXjP2P1PfuUNYQH5aG7Lqqv02jthTeNA
	BHPBgXSPMYKViMOyBdLtFmb0/gKENH1FQXgaGWIc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647327985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zpULNDAsgPK1E5CHEodXtFKN6CtGXQjhH4V+BguFnXw=;
	b=NGwhsB5SnQRhXVgEBp1vOzroz3M+ojgmAhT/n062WPyN4bem49oq6NG85cJ3PbKX
	QtU7ugmW/YmDHdX+e2jXULD6uf/BxSrSCqPYeJLmbPkcwxXCp64lzbatrRwm2aciSqo
	TBLzFmh+AbRgkM0CIUOhpwBPrAZbE2xpt9RfknfM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8c663c73-d0ed0a1a-8d34-4fd5-9d37-86388af8ce96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed5e5934784e715b3c4b92c4036a1c0237ccd28a475bf540d82190e7c9fb841b
Date: Tue, 15 Mar 2022 07:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647327984
