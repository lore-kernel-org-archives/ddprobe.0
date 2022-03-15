Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5ED01FB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 11:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647342384;
	h=To:Subject:From:Message-Id:Date;
	bh=qjBAyzKwSads/ROa+hRfIB4e0Bc3qs3S3zQAIknNu7c=;
	b=CBQDHh5pZF9fLSzFYMWU3Usd2j7bB5eyEzp+dSImYZ734ioPQvTKwSiC+6B4d9f3
	U3RPaxuPyqIc28mVyn7DEXs2rMj4Ub3lK8ZqTLt6ctwhB28L+DERweqCuLf6Ziqh8sf
	PdMpzLvAPiQFY9dNL0RnhfgG5NyuIMVpb7qwXEGM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647342384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qjBAyzKwSads/ROa+hRfIB4e0Bc3qs3S3zQAIknNu7c=;
	b=R2e4K4vAt6wE9LiFYPTyooCvIG9/WzZzC1IKBWDXoZ9ywmZ815Y+MVDRE9gKtosD
	qICmKJ8ERfPEZ6CZl1atzOy3dm4lEjw0VZFe6PgBWYg52KxcqGtQjzybxY5HP1RPXg/
	Kq62KiAk5x8ovzP6GPm6K+Lwdr9pfaUoliVhz6Lw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8d41f674-c1a93f3a-f4f1-45f3-974d-dff2d4cc7409-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc0a75d805581ea5eef92d990d9eaff814bec7eb9747f3f65d86be73ddd0668f
Date: Tue, 15 Mar 2022 11:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647342384
