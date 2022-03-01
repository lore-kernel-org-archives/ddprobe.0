Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A01C85CAB
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646150184;
	h=To:Subject:From:Message-Id:Date;
	bh=+1d85vScqqi9lF4+uCI7Uf1TewE8cnCRY0ikzW1Lcd0=;
	b=J/91/HoufiNNEwfX5bXcxlurPYQnfubX+1cQbZEbJwvY5Lj6paoem6Rqkf8pECXD
	yWLdOsfR/IYhzY4jzLvlYXvk2Qynah/MR6hVfZ33PUcKF37zgA0qJe0z8p/RMINB6Ta
	U718JOzs60nyrqjGgTpJuzRPvx9fCWakbvdKR5MA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646150184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+1d85vScqqi9lF4+uCI7Uf1TewE8cnCRY0ikzW1Lcd0=;
	b=O14Mz+DlhlN+Mx3etkMfNAnP7qQP+kUga3LTfVevuBa0/6X979zKua6JBYxuOXMZ
	Xxa8wD9fJezMOF2cOjwVw62E7aG988sYpXz6Opk149Dd+QioTWVHYf5D6kpmGm6YUnc
	AR8OU/iEdA9nkdP3deyiJp26PpLr98y2YIjU5U4s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f46326f41-bb09b65d-8061-415a-91f3-867070c1104c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a078aa935ef15d56cdfaabe4db32964bbcf298ebb34b9e43216a8448be619f2
Date: Tue, 1 Mar 2022 15:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646150184
