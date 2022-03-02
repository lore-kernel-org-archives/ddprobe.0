Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C62905ED6
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646248885;
	h=To:Subject:From:Message-Id:Date;
	bh=5RWOMV4auC6wnsmoYtUTeU4wLiIoTWSWPH00UEhNybM=;
	b=TLgHelhxmedy4Qguud93hACgBbAsJ6oA9Pv2rCTAgbAbbdgwTeOpqBdPtj0sB2uH
	q9xK2b+DRcqp7nAjICTJrVgl1nUzSdRmSQogulI7LGHk41aii/hs6P3jfvFqyZ/Mnmp
	AW11ccjX6FKzaObBtiYjF9xdIlGn5swvVRM/l3P0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646248885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5RWOMV4auC6wnsmoYtUTeU4wLiIoTWSWPH00UEhNybM=;
	b=jVqs+QKlUmrHeFwnNFDMSMnKtpRrSARjC1NgvTMv9HAmWnJvfqUbHofhotpcMFen
	QIhCbCLp7hJeK2GoyAUgw4P4i2Epa8OI/mSFA3d6+xeQhe5eDnSEbEK8k74QzdvsCq9
	LNUOSfz2j+vriD6TStmpE+/072u47F9h9xtx9aSA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4c147a2f-e10f2d4e-2d52-4931-8885-f9ba5ca73046-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32c2369b1a75b1ca7261f037f5d8f5e4a14e5afdc5c07da9a9b8cad730927131
Date: Wed, 2 Mar 2022 19:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646248884
