Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D8A1FDA
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 17:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649006458;
	h=To:Subject:From:Message-Id:Date;
	bh=+PGJSp4dMpCG5kUCg4mPWxTLWhI/s3iEmA+tR6ABMbM=;
	b=VSFBaX3t+JtnkepFfmGOnXZKb/qaFvST3gl+hZtbeFncIvMNEJAI+BBPcqUB20fz
	cvTksBd97e+/UrgKGszl33/WoAebUZxD7RtZf7mvtT6iGmiyre4vYYxt3aJB2Ohwdlj
	F9OI7iSPsH/UkbE1O+MkyHym+FiqnUIrr9Zbu1Mk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649006458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+PGJSp4dMpCG5kUCg4mPWxTLWhI/s3iEmA+tR6ABMbM=;
	b=PPGPn/F8kZS1VwNHo1D+x7RRwwkbgzmx4NwRMTPbTxohKF+AzP2K4NcLRHme20am
	UH9L/KmSc00k7yGejRl6p8eEN5UYjpCRXmqesqpiAyyurNdvWI452xdkifqQNMq33J1
	jvEU7LMYf+7iJ2PU4kC0tD8PZulQ+Zyu5TMPCw+I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff071b60e-4fc8074c-40af-4cc6-a9a6-efabd267d94a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b46277a045e36458a367e192f557744707b4ba6f2ad85e9290504f1eb14e758
Date: Sun, 3 Apr 2022 17:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649006458
