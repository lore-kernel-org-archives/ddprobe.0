Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A18CEA3D
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 09:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648026384;
	h=To:Subject:From:Message-Id:Date;
	bh=b8vUAPYAuBGTdyOzdp10H5mxSJHZgchZ8dAuCB8+kO8=;
	b=OgnzIsgLOaxxrB88K9Oimn5R9SmnzcJdXdwdEN1FXuw1u7oGkhv8UcqJNMQMc1AK
	mDvNtITiykRhhbLs71ftUtwgt1/XVP/0hz2MF5NUJfowKJQpcPzoAcl8aur2ytRPOZ7
	kMTNBdb1W72j4rNXuggtCciwcLAepsNlz5xQZSj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648026384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b8vUAPYAuBGTdyOzdp10H5mxSJHZgchZ8dAuCB8+kO8=;
	b=DGqNqVsg/BcRbIrvcEhOrDF4YSH19IQ4abQhFuvFQLNLyW5pkPtyIRB1hrPEtODQ
	rMtjrqqBxGUj5RcO7hSZrPyN6fZujpRI187QcvfQyiONBYvlpOHho/lNXertXrtrZL+
	kIyhMNfN8k7/pJTTl0ZKanm4TSrJ3tbkGBTh7fKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb606f96c-f3b60966-c657-4ecb-83cf-ed35a1521327-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6a8692b3484005c69f8b3bc8736c36c93ac1b4933e8820a10448e6e178ed5a3
Date: Wed, 23 Mar 2022 09:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648026384
