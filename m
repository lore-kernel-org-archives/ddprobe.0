Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5699F2F36
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 19:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654715819;
	h=To:Subject:From:Message-Id:Date;
	bh=kAmwVTVeZ6k05uRhcE1edGNws7e5v4gp4nKkJs9f08M=;
	b=h0QVJsRNiatDHDPqV3dA2N7aiYkzPJENZ/cduQtLhjC300JeJ90pTWVS3EXWlWvM
	uJfAW9LYdIsjsE0BPuV/XWNSjgEQ+HrbFxygHtuEdyNddFq+yAvXGbAzpSi6UNrhj7Z
	sdbuMRlsJ37LaMgKU4h2YD5XElu3KeWEfyBl+bkw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654715819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kAmwVTVeZ6k05uRhcE1edGNws7e5v4gp4nKkJs9f08M=;
	b=WEecudLA27+r7phSy7smA83YWCOoh7ue8MJhUXTGTFHJDYTEziS5Duq4xjZdktzg
	wnIzmF1d7PWklcfKem6EshjDKQntVyEa1kidljVIuLg00Y9nhwb7zyVvOApuc2vSHOM
	b0oUn+0iLBoLKMyLjX1iY7eABERVtbVfOVbXzH5I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018144bfa554-cc0c4eb7-ca71-406d-b9bf-eeb3253af3a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6beabfa5385c03866d0c32cd7b303af3beae47f464367bb20f66c067df53172d
Date: Wed, 8 Jun 2022 19:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654715819
