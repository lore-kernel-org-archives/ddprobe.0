Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2BD7B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 01:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645492584;
	h=To:Subject:From:Message-Id:Date;
	bh=TmWvEJHO5Ne1f/UCi2gcMX6iRjR49vlyzb2xd7QM/Fc=;
	b=K0I/hnX/IiGVr5xha5FM0EQGf2SFI6fcdks+cfeKREGNhzedp3QaFFh9N24CVZY/
	nenljKQmqM6r8STFvkWk6y39c0oPEUSK5j29904x8hSJIUgbXxeD0x5EkSzGOO8N6QW
	E3PaAocpLQ65hgWAGP9XY/p8Y1vSn/P32eHQFxUo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645492584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TmWvEJHO5Ne1f/UCi2gcMX6iRjR49vlyzb2xd7QM/Fc=;
	b=KpJiqG1eVXjuVgGy8sV6Jd9Q+xl0kuzsPLN+Npk/7yYK/zCpPbv2bjeELyvSgZII
	g9jhcmQNNzavLl4C7XrbCABcMUyQSamrb/tcbfQr73/IYkbkOgwo3HdfsqlBRjOQUZq
	kh+mRLIMPrp9aaBwaMcMIBJMEMVfiIFo0W8EI2nk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1f0040fa-dc1f414e-9f44-4198-8292-ed12afd9d2b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea6bbc3adc1de7fc4c774c98098a9234d07670f40f603a52f28b6c805cd18407
Date: Tue, 22 Feb 2022 01:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645492584
