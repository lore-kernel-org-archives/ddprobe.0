Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553377A
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 23:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646175984;
	h=To:Subject:From:Message-Id:Date;
	bh=ndRJKJdAhow4Kh/M6YvnGsqLUlrVsHD7jKb1+52kXI4=;
	b=bvqMcewGJkNwl4IqqzMNredz9b2Hhoo8zK1cr0D4gUHE6kgaRMvzbgTWG/1Ua4sn
	LI6d3KaDNmSQMGe/muByhJTAmlYQYeD3FUKIxlfx4V2Gzbw3vaRRpLovLblDLLwD01W
	K1TFkXQssNmcb8xzqSF3P22EP6TdHZrAZCpqPSdA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646175984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ndRJKJdAhow4Kh/M6YvnGsqLUlrVsHD7jKb1+52kXI4=;
	b=gvWYsdA/EQ8ko+QTZ2UKWCjxBUA0Ke5IMf7n+pzdk4S89TBV1DHUw0sHbnE9QyOO
	jBXBdCZsEOGrHQ95lOB4K2TiszzI3KU02oVM/oOIMoPlCL6r6etXaywj5n1Jdzf/n7i
	5MRAG52Vcev+zpK1nzm2LHGcJ9Y96CUu2S7Ag/mc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f47bc1c5d-344d9038-6679-43ae-ab7e-1e2cbe144a96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dab4dd7101723703fe0d5a09b17884ebbd418352d830b2a8e868a4679620ca47
Date: Tue, 1 Mar 2022 23:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646175984
