Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC9420F7
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 06:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651644658;
	h=To:Subject:From:Message-Id:Date;
	bh=So/KDZoapkyJXwgBENUvt0rdII8eTwkJ86+dbthmSl8=;
	b=ME8/jSreN2cZHifhnK7w/6D4GgXWs+wAMNbzAQg1kQEPziwhhfaP7iIAlLJJiYcH
	SqEn120lavUa6MehsNGIx773TpBxQzYbk/Y9fVIg8pkRFEUdPwQn8w/XhXkFjyMdTo2
	TQTWo4ear8EegqInr/fS3trV1NqLNCskytomD5x8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651644658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=So/KDZoapkyJXwgBENUvt0rdII8eTwkJ86+dbthmSl8=;
	b=UK6s35WF2/mxGfXtSdfyKP28PO4hfM/FM5Ng1eiOvmaXqW1Vu2ulctte/OG8Ref+
	mhBb14I6Y+OzPPGPSmIdX9n3iHSRZ6RsjuYhsS2SQ3snhfxWcfjcxRCJd7SE2L9fxOG
	teRXLoORaQCqejcp4JhzrDvb+AB3WB2Cx5PIq5zA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808db17254-97a34192-daa1-40f6-a34c-6959f7c49057-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2629f73baa79908219c6f6a0eb8b1f69b93fdddb09a33c066cf2274b8f278188
Date: Wed, 4 May 2022 06:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651644658
