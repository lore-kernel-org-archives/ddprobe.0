Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63EFD365
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 14:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644760807;
	h=To:Subject:From:Message-Id:Date;
	bh=mIFqPzs0+VUSVm4EEwz/mD4DMLP6d49YCael8QDm+Yc=;
	b=lFetgBbp7n8SzDLGRn1EukEAZ+9n7UrMwF5Dc4eE8C9+VM76MQowEQuNG7Z9jOrk
	7qqIbDa/v0rs+lkL8LtdPThZpYPKeX96pdVth/Z6BR7RQ9tIFi52opf/oYtkDcClNH3
	lgXci8ei1hSdKqcQm6NacWPyslye9fchBWEP0F2c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644760807;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mIFqPzs0+VUSVm4EEwz/mD4DMLP6d49YCael8QDm+Yc=;
	b=OYbZscnGHWXXjzkEnF1bie2+zj+R4EqPBUqYC6rqWHMDc4SqGcthUhBJVEMRTOJf
	gTEYE1UwdhqrgNmGvN/ZNXsQVFjvgRsccK473X6zOPZm+mWklG+KGN70GRCwYsgxb7g
	U+XafmasYnuBcPTqQf5Q0oI5HTrKUwpAT1w85J90=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef3623804-a652f297-53fa-4991-a686-1b0114680b37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89ec7ed6d2144472b78857b18d4cd4c761620eb59efa79312b78af4e36a6ca95
Date: Sun, 13 Feb 2022 14:00:07 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644760807
