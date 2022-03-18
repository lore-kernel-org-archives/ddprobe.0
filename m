Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F8F3D7B
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 07:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647586884;
	h=To:Subject:From:Message-Id:Date;
	bh=q2itqgXaKa5dFUh6S+VqJs+7Con3dNaLAx0NeQY38h4=;
	b=XmWj0aCu0Afga/+Ok7B/2JtiLDZObrqQfWAzcd4Xr077kUGGMd9B5qQMa+cjdkVm
	DZ8wWrD6U6eSlZNK3gOkuRMuJGHK3TqLrcTALf1/kBnV7ZYmOl/UdFzI2w/lC/EQM+b
	suuVy052YzUu3QLcDCGhVeJ+UvyndBawkPu9WFN4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647586884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q2itqgXaKa5dFUh6S+VqJs+7Con3dNaLAx0NeQY38h4=;
	b=UgYfWU0WDDvfv9BlyDaKVo98ICtra0NnyLg1FT/u8fBPb4RA+BoLgJx/fLPaOp6O
	IYiFd9uvt7BYm/4oN61+7/DePOamzyfEk/qj4t+KChouPRkIN/CTlCCPchceOXDXJ4G
	GCOtgX3AlRfWXGWRDIl0lB0eVerRUZttqDEsfb2o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9bd4bcc7-63d4b2e4-8da0-4298-9a4a-6decdc974dd1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 716c54e2f5596a6bfa9cac4ac124f2d5d11168ebf5d217e88862ff335f3fb5ec
Date: Fri, 18 Mar 2022 07:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647586884
