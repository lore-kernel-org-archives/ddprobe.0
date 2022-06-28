Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 760F4367
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656392812;
	h=To:Subject:From:Message-Id:Date;
	bh=x/iZfX8ckrsYeGLLupoMiMR3FwqySfrJTSKw9BWqKTM=;
	b=k4gkrlw5+qrHkmS2+YlWwSfzZKnMP4PWmmA7J8Jv6rjRk9vtIX01jmY6xlIwmh2K
	TBS2BE5flM+ty7ogY+8WRW5WoaFWlDkJvZ4oPACOIuU4TMsp224n61RzYx7DTU46YoZ
	vk11PRq3a02hy7QVbV1EECdjk9eY6cJkBeFPzFAI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656392812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x/iZfX8ckrsYeGLLupoMiMR3FwqySfrJTSKw9BWqKTM=;
	b=QjZvOcjF3z1A3E1+xgFcvW1nuLRm7FPKrVAlBfMO26GUA+Vx1+95zPCubb6QZjT+
	ZPAKAMfxrgOH9aIkdF1pkbbyc9uz5+riKJtlr2xTFf9TwhmWxWmizY36CwVusJhMwcd
	iRBJ29467euu2Sf7PbxGSLLRXao2849QBKTL05jQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a8b486e5-6e7473d8-60e4-4a1e-9f83-32df651aaaed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a024c704019b55f0030034b57443760d815c14539d8e64130e8bf14d1a79dcda
Date: Tue, 28 Jun 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656392812
