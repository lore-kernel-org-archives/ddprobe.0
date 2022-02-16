Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 881D023D2
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 17:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645031784;
	h=To:Subject:From:Message-Id:Date;
	bh=xEHKlUxYtt4RcSiND2Azc47kC4jCru2FTUy3mxaLQcU=;
	b=GcAzTrhFTyCakPwePLhYy77XdLE4rN4UKgqV5SVTUw9TH+rAo6yuPk2mLRST1nYP
	T1NoWcvxW0+PIaoDlaelZqWbEbUDEOvQbJ74Gl0yWf3Kow3KxmJZLVrwMdLKjmnNFoy
	/mEBJ33JJvGDJiZp2VAsbmKLG+tJYeO6zQNaqLLY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645031784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xEHKlUxYtt4RcSiND2Azc47kC4jCru2FTUy3mxaLQcU=;
	b=GE2GdtZAyRHRqtQ3OXZDGaFtmm1Az03hNBdAjdHjS0qgjGMuvTH/JG3yecYrwnu9
	/4TdJQfISmAk6VRndu/555Zwrgey0C2zmqwHKvPnFixCvK/rBJnSnOMluMo4v49LJ2Z
	V3io7dL2RPsWT5bZp8ED6it+WkZQy+Qv4pyVnbXA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0389013c-04e8d80b-79a0-4fb1-8da5-e5fa78fb90f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 026521e4ebb0ba7a9b02fd5e4a3de374b59e0b0025b3f9013e8eaef07998db1d
Date: Wed, 16 Feb 2022 17:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645031784
