Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B01F7B
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661173252;
	h=To:Subject:From:Message-Id:Date;
	bh=wauL2tuZFbyUvYn9A/Utc022dSqyvlW+TS38F0fH2rA=;
	b=MldQVMtJzyQyQTYAxVS/s+Lb26z7kMvI+SvcbtTJ7YenOcOs5NutUYVc8OxNaZm6
	jSYQHBh/OM2XSiLuFOFDfVbeG8SFK+vXT0wE3GANlNg2oLdr5csSQEjLivnlBiLJpwE
	eCvBn5hBNhAvjAE5hCdjCFQtqnh21NulRsJvVc44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661173252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wauL2tuZFbyUvYn9A/Utc022dSqyvlW+TS38F0fH2rA=;
	b=F0NB2Ky1Swu9hxMfXnpi7iicSJdIJuKIHmacduoNr5fq1BtejqZu91cLNS7nRXUq
	IAojLwoiSHdjxjrryxRHdjlSGKRPM1qKR210sFBHNpmpsh3dwMjwRZnJVJthprqplli
	3VZJuvxfn7eTHHjIendDF5gZpoUHMNQLNXJfgvcc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c5a441e6-2e11fcf1-a4fd-422e-b383-45ca92afeb3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47b7fe06a172444db6a9083aa3399910facf62c09967a6e2c5787b228b6fa1b0
Date: Mon, 22 Aug 2022 13:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661173252
