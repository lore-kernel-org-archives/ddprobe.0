Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C487D
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 22:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644703249;
	h=To:Subject:From:Message-Id:Date;
	bh=2x6U/MoQvsiWNS6yjGeKqLW27fnL8MHLgdx6vT2PWck=;
	b=fzhF7RNHSHzLzvb+bJFWn2sKkY/lCsXgpnZc7l1TmXQVUeWIYds84dSrwdmEiGVT
	jcZ2CR0ErtuTYG8EwkrHInYa+6Ic7Rvrhnh0SEZqWA+OTXsWQ9oKTViaaXLGM+LO/mf
	OIaaWEBxD+cAy2HEDDv6oKkGHCGcGNTnEijmrG1A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644703249;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2x6U/MoQvsiWNS6yjGeKqLW27fnL8MHLgdx6vT2PWck=;
	b=SoMtpJ8VcNjBgxguMWNo12e9232IGqO17UluYNCV03k6qe62Kp+XekS40gwn25GB
	8QiBW1rx7m6qSQBMm3INaDYb0BA7o+jgsuKH4c56h8CxCzZvJFCQ2NyQ4qmPJnZInLd
	U9pOpLLHzuCe7EHfvbDKOj3sMKf9QtixIPuXz2nU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeff3f1aa-1c70bb9b-8f1a-496e-9f27-df1b20d4cc92-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18546d50c22e1928fd2f235018785ceb2b076a0519c2bce16f4062a69a2bcd67
Date: Sat, 12 Feb 2022 22:00:49 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644703248
