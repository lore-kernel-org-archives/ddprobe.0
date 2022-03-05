Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AEDD7E
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 11:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646480784;
	h=To:Subject:From:Message-Id:Date;
	bh=wDl6tVsJbZoUBNEpf+rR7vVr0YbAUNZzGd3NgdDhQBU=;
	b=DyfJ5bGxliF6RVbjDSCala6gbuQRoBwo5FJSd+SeL+Qqaeg3rgZikdR1VYtdqGy3
	5WJ0zXqtXhN+bGkyF1CnzImqSCxqyIdpaWUZIM3fozGFtToA8O2w5FXjTkSLeOSYMG8
	f+wsCLGlSLa2VtURhCCMje9Mc9qrBv2BqLrNiImw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646480784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wDl6tVsJbZoUBNEpf+rR7vVr0YbAUNZzGd3NgdDhQBU=;
	b=cfREm72+Gn095rlNVTy3x44u8auWD3to+mj/uRB/XookeN895CM6Dz/bU5aaLEWp
	zRUPJMRLkGdK8w3lUqUngTXzD6Elhp6Nsv0+J0x4Je3vWDZSGPsXTGAewYB4uSL470I
	hkV93AzJPNEdsB2bI2aovUBoJasIqffCFoZYZle0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f59e6fd8a-c2cd0285-1161-4ec5-9966-64e943e9f99a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99ad12e69988d78cf76d2299deee33dc4ca8bb256a50f40141930b3729c74f4f
Date: Sat, 5 Mar 2022 11:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646480784
