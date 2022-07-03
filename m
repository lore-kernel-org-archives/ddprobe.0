Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C464435
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 01:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656812812;
	h=To:Subject:From:Message-Id:Date;
	bh=udxB2lx2gsxywo0gK2cj9eX/UrxFKKXmvLJxNvB7iZc=;
	b=KzqdTrzaHPU3qwxsCvfDqWUfildKSCOUntawkT8Q+vrwv0vI/oecekqCEIoMtOUP
	rGrW1EZcFJdBtYqnnXHTWR15qxkyTflFqO3NkRsSzWNW27q3RvYeIjeElcxaNe3G2Hz
	U9iuOtDZC1qs8wi0/C/WpyOG6LB1w027KJsFtFhY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656812812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=udxB2lx2gsxywo0gK2cj9eX/UrxFKKXmvLJxNvB7iZc=;
	b=aGeiHk6fp+vm+auXnLKynMErBQ6HMgG5QJVVNbtq9mHdCL0jVllkMHLVKoXFIqND
	A6vT4Pz2shOPBQNuQrHf1BXy/rO1Hbyjve8uObvO5f3nvXyTaDzYZjKl//bsGoLyMZK
	81auVnnC7tNdNog8GHx/UxWxryrDaWaEVBngFejw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c1bd37d3-ee5e8bc7-6a03-4c45-b74d-b3c69a42c3c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 019308985c3eed506eea73730033007ea2d6ceeac2c5b12887dd27d2dd8abe32
Date: Sun, 3 Jul 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656812812
