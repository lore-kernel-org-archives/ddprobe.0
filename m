Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C6667482
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 23:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646695585;
	h=To:Subject:From:Message-Id:Date;
	bh=IHFYItM+dY5hQyPsKPJQhQe8uP13b6MPqz8BnmeoUD4=;
	b=GeGMJE4znK4B0+uRizEf70jkiY3Kd8N4pY+QCVTvSBqWq+vq6UZkTgej2qkBAdx7
	lXJd7GwYwpRi16VRmrxsrpUlJmqjRCrJnSATOR/C9wQw0cpTiWMGX2poKTo1Nns9Mop
	Jvv6g2YZjTa8KmUutU/HpiCR1cq6uUZ7ddGy62N4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646695585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IHFYItM+dY5hQyPsKPJQhQe8uP13b6MPqz8BnmeoUD4=;
	b=atSainbEEre+djx6qPSa8fx1fmmGsySGPWKoFBNg7LMNoQAWYmwRbEpr0QjS+OjU
	Ze9bFRZxkIZwW0PRTmyY7OQJiJGH/+k045Ucl1KrGDypS5s44Rw1zkUpY7PyJxnT2rf
	WIQN21Bcx2S5VxBkTEA6cR5SGOGUSkMSyL62k/4A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f66b49493-1b8b42f5-caea-4ef4-9525-598f6892e6a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29bf09c03217286a9d34ebd5299792c884c6bd8ceab8d127f6a0f57f80ce74e3
Date: Mon, 7 Mar 2022 23:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646695584
