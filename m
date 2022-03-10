Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A03918D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 18:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646936185;
	h=To:Subject:From:Message-Id:Date;
	bh=ca9R+Lcv4AmIWhmb8aIcWUwkzL0xQ52cA+Y3Y7R6bWo=;
	b=dhEcnpU+RW5onjU5Z/YL1ea49J0c3WTGl9fnCerwvJOQKyPFdqLxkKhvXmoRhTqH
	OBCRDCEB++TqdUPhDOtxizYqZQPLCl8H2kSgKtC8ZYDxNDL30n1JNrgLtIsqJ8GlQw3
	zRdkbZNx+hDs6yJk3OSwZ8Dn6MjfgzoFwazIDmNM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646936185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ca9R+Lcv4AmIWhmb8aIcWUwkzL0xQ52cA+Y3Y7R6bWo=;
	b=IN0DwJBH8l5X2dk5RAgOYSjYc5mJ1z+hV0kHYmhRns8PeE/eWqOhVCmFSP8Vw3FB
	4pRABayuO0fewRycQYvbKFXZpdIKzGTxUzGkb0gmawyKV5vX3nsxvafUyQBr4QJOS7Q
	nnsejwd4f1Qn+m47q9NNJCX6SkXjZepjaKvSdYNw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f750bd81d-b2852dd9-ec95-465f-837b-8d77ff89a225-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e7fb955aea4c0afdb103c7510f79558963220290723d8155bd6d44ad73c7d5d
Date: Thu, 10 Mar 2022 18:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646936184
