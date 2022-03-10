Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B8AA7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646899885;
	h=To:Subject:From:Message-Id:Date;
	bh=dDljjqKAjbcVzS71p8p1CA+IbJX3SDB2FzgZnmwFGCQ=;
	b=Dc6Sjo5x/32V02MNj65f6A6Gt8FL2eBZa4gqxJSUyJMP3Xu/QvVIOEGzJttTwdrb
	N33OUNA8rPmqaUSKa4bA6/8K9G9SHItVvOpS7OgYP/lgfE5t+BkM9uBQsezeYjcDPIc
	cHnESUXvB1ceGQBocQ45qDnHstl0eyKzGgmDJdo8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646899885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dDljjqKAjbcVzS71p8p1CA+IbJX3SDB2FzgZnmwFGCQ=;
	b=eC1UDbiObRyZR5IvoaMzt7KfoFXVZyGrCVnJUGGKAPsb1aRIPRfT9tg2WGX8r2z0
	UGykaV8HvXldrWn0CSS4G5VHWjgBwSFb8IZ0eu9gsaY4bXYxFvzSWDP0XstnmP86/lz
	jMz0MYUcZ/9WkxQucFMydKHrb/yV/31TyiIHjnd0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f72e1f2ec-032caed4-597b-45db-89f4-f8bf35a3e601-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e0b477b4ae1df02f8c5f7a712dd87c43fbe0fa34e96c82603f588dc4f29e6a2
Date: Thu, 10 Mar 2022 08:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646899884
