Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25791638
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 12:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657974412;
	h=To:Subject:From:Message-Id:Date;
	bh=+tU+WJ8DexSTzAppjcZjUJc+vb08wB7bfEAhjlkqGS4=;
	b=Aq21k8luGLm0UyFkkD2xnmvd1xgvjcquglR+vI5sxi3LyMW6WP248WvcS9eXZSGV
	+K18lSN8QAG5E6q9NBToZFv2CGnYU8B6MUp6BLoJB+KeAk6YhfU+pMUlFt6+I+OQomJ
	8llcPKnwdXLHIye4K0rj22ZFAOu+S3xwkJujcFm4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657974412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+tU+WJ8DexSTzAppjcZjUJc+vb08wB7bfEAhjlkqGS4=;
	b=I3EntZiU9uOkO1VrSeHNaYWOQFYjFxL5DsWs4k7qDoI0LBT0ttwOtJ3RCTCnYr+p
	4NKdjo/ZtObUG879C9a3xAUqOGM+bHD5BGnG/QwsJbkhFTXczUr/IAjbwwvQwaUsdvi
	yej8WAuOwPd0N0coo2rAgtCdNVqdOit4O6pNZ4uY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018206f9d412-22dfea1d-ae01-46ea-b063-235cb68a84f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd45ac370d499d5042fb74830604a996155fd11ffcbb6c6d8ce2c1d8144fe08f
Date: Sat, 16 Jul 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657974412
