Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A658B7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646425584;
	h=To:Subject:From:Message-Id:Date;
	bh=2o1OZ20mdLIS6iF55WXl0RFpIoNz851iul12XKJ9+8E=;
	b=gO48r14qcX9QH3SxvdRgBQN5xQc0TQd4oslEZDYdR/rDCdxLLiCyzeFofNcoNsDf
	fAbHZRceBF42yDkViy3fvrFkOeOw85GeAfmUzd8Ht9JpNFD3dVFlsowx828sP7qYbPA
	xHFoasvp+kqxMB2L56gRz7gOTNvcPW33HeCZ5HzY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646425584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2o1OZ20mdLIS6iF55WXl0RFpIoNz851iul12XKJ9+8E=;
	b=jYgzN5LVzKae9u3WiiIjq7vY9yMnv7oStRjNJooTTXNI2un6ZHyqVI2yzZR6YYik
	nuRFFpRu/buDuWXnHv/BQXeS9KPK+V1o3IrmjMS2rS0320xHD6knm56des95rKfh4GX
	yAOUeDtq/nCmcgQUpaRdwGoV+KhxvvJxkDxXFT50=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f569cb497-d202b610-0127-4bae-bfbd-b5f9d9e978dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63017a1b5ff75ee1ed78ebcb90e6b3462c3b463891b28df2188ff4b78829e869
Date: Fri, 4 Mar 2022 20:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646425584
