Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E75DD3FFD
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 21:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656451612;
	h=To:Subject:From:Message-Id:Date;
	bh=eg9Q6wH4VNWjr9Gf8kAm+OP7DD2mFqM0s2GBm3S/xOU=;
	b=jniKinD/Esx4XIjFVgp6jcd4sDmfacycJP8ONF9+4ZA6WqRYvmTAlxHMqmo/Iiht
	maSyZ1D9FArwJGGQZwSvZPel5mUqvZvDqBzj1TKQSKACRPRV2fRVnn5ct5SrN1DMHG2
	GPov2KxQj+d/F+XY5Pjx7cCbdnsYtMZYfcBLMx0Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656451612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eg9Q6wH4VNWjr9Gf8kAm+OP7DD2mFqM0s2GBm3S/xOU=;
	b=V0hKUnidy0d+fN6Fzr4qelHeAzo26S/cyV7g7yL+dgvu0oZZnALY6lNMYOOZVZoF
	6Kn5umCmf75SeMB0EAUP1X/miI2vkx0LCmZ7FwcL9lA4aV477JSSpbpY8UM/vRV3OrN
	tmWean8Nw17e1vm1cn4L3XG6lvePavT8gzO64z0g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ac35be69-b087fa79-dd4a-4adc-90a6-fb2782cc9a5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1acb1363a934acf23fced3c867921f8a7fb3aef73e6656a705c021e9c7988a5c
Date: Tue, 28 Jun 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656451612
