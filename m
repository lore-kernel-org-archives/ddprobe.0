Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 885524F21
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 23:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645228584;
	h=To:Subject:From:Message-Id:Date;
	bh=0TA+7EC+1s7Olm5sNipHwHIRbzOtw/STEFxrwmvcFo4=;
	b=gvNN7LCZCvlgZe3NDpNKLQUZYdM0/sYaHXnIUthO+OsfQeWIy8FrO0Gjrs37jwQA
	7L9ikZQKWUz4mzt0OhLS0D2R2Gg95VFxrkQhzsMz/Iln+ARrGp5EQTIGeV00XwS1eBu
	DY3V/ekrvVjqVLydKfx5HQPT6HMJCuCG00eMxzBE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645228584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0TA+7EC+1s7Olm5sNipHwHIRbzOtw/STEFxrwmvcFo4=;
	b=ALdMKqx2aCv8zdeSALTvrVMmZ29sYEj+YENZOm9WPFLCMVFkQTMOk9OpTl+XYkU5
	3+kJfacI7xcfNtSBQxCqknpPitbPL/goR5HJCq85XfPaX0aaJJ2HbWcPepCL9iYgXbp
	7xFhTnXdILzfqel4101WDNSaHIAtdvgBE5AkYqGU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0f43ef68-4d7e583e-3855-4753-bfe9-32fbe4ecfb0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd86367a67dcf0f14c22148180a1700ae895deb2cdc37eef9758d1cf5609bd16
Date: Fri, 18 Feb 2022 23:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645228584
