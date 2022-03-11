Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB4F42574
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 22:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647037585;
	h=To:Subject:From:Message-Id:Date;
	bh=X/LKjBf4LjPr9H5j8mwz5fr/VAseY/bMj2WtkQTMFng=;
	b=ebnxAJXy6oxlP+joX66YvvUazvRg6GUrBqn3lIV3bXH5aTL6Q3YnRgmkXzujXRNo
	K0fALPeQu47YiVHm9NEBAzmHBU4fY40g3rsoe4jsmDI6CqFRqskYtBZY6eEPk9ql1S7
	swwMlXFl5FPMZTISnJafzGN159uRml4ClkoM0iJw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647037585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X/LKjBf4LjPr9H5j8mwz5fr/VAseY/bMj2WtkQTMFng=;
	b=f89NpsWTrJ3GYq7YNKIH7b/VGlwcq7xCZXtK5XTmDPXIC6gY/GMTE8IdLwlH4eer
	E98gGqE4zsA6OC1xXmh+3hr5VbFS24H2ak0mDA+xamXaVHAbm2LMvYCF1ngjAQS0rYV
	UKi23nfFplxG1j+Hhtpw2DUZjh0c932+QAhuLoDU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b17159d-6d098c50-da85-4afa-afe3-1c2875bc771d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ddbccdb86959348d6f31b48e14cb3c07f2035fa31bdbed147ad95704ec4775d
Date: Fri, 11 Mar 2022 22:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647037584
