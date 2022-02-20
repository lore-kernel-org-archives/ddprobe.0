Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8958E7B
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645368085;
	h=To:Subject:From:Message-Id:Date;
	bh=UsnOI8Uoi5k0cCCFOr6SZNkcFd9zcRjwHB78FlP0ZmE=;
	b=jVS/JZxsTPej9ALcwDudfLXpTu8J4ew5kjohnvuymkpfcBDdfPJnHs5z15PjaU80
	16rRqZ4YeWqYGL1BigiGTm0pjct7O6etq+EGPN07lEJ1pLOdPQ3q1X863rIOesNnnsA
	IFb+mBgbfFIdcQa2/ChcH+/8Q6z1wqb5I5Absx1g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645368085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UsnOI8Uoi5k0cCCFOr6SZNkcFd9zcRjwHB78FlP0ZmE=;
	b=PF9ByAGBXdYOCk5Dy9V1n3JftHAHwautFfg2m1x3WCFrbwS7Ae/friZZZm3cdsyC
	HQva92+l0mUeVvzNwfTEh5JAEaW0A1dqwZIRVQxeGu2z7LTOOHJqTbfavG04fQvCJQR
	pWP6GCszEQxnbdgWofn2sHIYSh8cWbkUfM1O+VBo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f17948984-df88e450-42aa-4ff9-a469-982d638e9086-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c340f6071df7a67cc24771099733cf9e4195e22ab72390a7d96d27740b169ff1
Date: Sun, 20 Feb 2022 14:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645368084
