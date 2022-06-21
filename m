Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF06DA32
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 04:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655787479;
	h=To:Subject:From:Message-Id:Date;
	bh=+B/BzxjbgL6wtk9mPq7+pHdqTb++nP8jyQ4Nh2GAa0I=;
	b=aw098OyHp7Pz4U9ZqR3dRfY+85wrX+jJ7zAmvNCs+tAvjjAdrEtFPpFbAdhreUIB
	a7zbwwxm3b859a/0QdU06jugbEphGPyqCiBz3EFtmlsBEKMVHb30Fg38m6ShUdISKV6
	bsbVmwaRx43jI9jfwbfkmL5Bez9nGD9g3MBvR1Fs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655787479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+B/BzxjbgL6wtk9mPq7+pHdqTb++nP8jyQ4Nh2GAa0I=;
	b=P86PrO8GXXSakzHwxZjUJNeLoGWb5QhEW1Cb+X9DlPGDdhUz3tQAZ/hEclKvGzyc
	bPQYQsqgioSN1Sl7sR1CQkzHQY4f9hgXAYKtRr8H1cTfpw2oXDLdMaz7B0z85PnaDQY
	Lya4S663egnxZkGpgXSf0hPkf7C8mPbukx0M9zaA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181849fe0d1-a47b0fdc-061c-42e9-b7a6-b76d65a0f4c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7106aa17d02b66585c1d0fdf0b78ef82b2be617d3fd40f0ae2dde818833e7cd9
Date: Tue, 21 Jun 2022 04:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655787479
