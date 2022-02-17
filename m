Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9CAE463D
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 23:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645141585;
	h=To:Subject:From:Message-Id:Date;
	bh=aXmAfjKF7B7v2sefSMeMT1nAtzLNcf+70Ujn9c0YW1Y=;
	b=NBy7FNRg/RDlzqiczHMpc5vJcrMcsHsKIJcnI7UaxAkltMsTEGcm+rCY1ENKy84W
	5ZDEZccqhxLA/aw4ipIzSjJqyS0yCHo2TsVqHuJDorYamm7JymZoMsmomUdTHHDur4I
	PsvmDhgEreNueru+k19t4ZMBLTsdXRY3nhiRkSDg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645141585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aXmAfjKF7B7v2sefSMeMT1nAtzLNcf+70Ujn9c0YW1Y=;
	b=Lh8E3QqvBLFkNdHjL+boGs/YVsrdf2waZMm6tR56VRP8qyVslngRwYjNu3uWoOl/
	msGZkcdjQv9bMpkHuVqQKnx+uqa7LjxW/aBwymYzRJbrI2gLxRwTCWwKWRgU636qMsl
	y7ujA5zLlhCMTjjqZjQxntgkAvJ6K+1ohg4h4HQs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0a146b9a-b7b8d5ff-c55f-4957-8387-bf88c6657c88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 514370c9cef32639e14586f671e667681ceaad244f1d7e06c37632e8533fa0e7
Date: Thu, 17 Feb 2022 23:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645141584
