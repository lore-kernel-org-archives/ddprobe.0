Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5D57C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659757252;
	h=To:Subject:From:Message-Id:Date;
	bh=iqPRbcU1TmkvZmLFVqvJMFX4c+BpvHdIh9JIFAdWm/0=;
	b=egRHboplrCOKIHAFqiOszUf5u/YLvxF5Nad6KhbzQmBNuFFFrZGPARd3gAugR1ZR
	RuPZjctW5Bp+rxEtvRBtaBWr26nIcazxIaC9wbnSMoJ+4dOPKYeP+mYPOINBMie9ebL
	TFVi9zzIXBfRv45Ta7uGlMj1UdsQ6kYAr9de4G94=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659757252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iqPRbcU1TmkvZmLFVqvJMFX4c+BpvHdIh9JIFAdWm/0=;
	b=SpCxmuu0C5KJR4IijmV9gim80n1kxLdTUr7pa99lBVont3cLaY6ByIMkOEQ/zmMO
	LMFGKH4qYOrEzZZipfzNtRX+kbn3apR8Cb1mRIITDNxcPXkqva13qmdee71CGXbLN0t
	cQQUKtWrWdvo62LYBH9gmA587dCTnMLIkiiNPPzY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182713dcfc7-ad3e59d2-5929-40bc-88cf-af2f74c35c7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc50ccbaa2f2912acb31ac57530eaa336c76c13a91ece1dbb7b3397bf7cb26ff
Date: Sat, 6 Aug 2022 03:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659757252
