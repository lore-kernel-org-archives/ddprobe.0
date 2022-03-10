Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81BED7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646916984;
	h=To:Subject:From:Message-Id:Date;
	bh=YkWPwfxN2vQjy/HkR8VH10Sn2dw/x5DTiGp+EHvxvlk=;
	b=EMYSaoeT1jdKXvTJvDBSJv3gT8qRQRpcmE2VPsI+HgeQxRDTXSooUY48VIc7DyWD
	ci6rLO+SAlpDIyDKktzCB0JxrRtNLIavFH7/+I0Ii5Gk6oonJ2koLU1NHaBe4DBbbnE
	Pwf6nfSiXdCRK+02ZUQnEWtjF8sr47SWIg+59aoM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646916984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YkWPwfxN2vQjy/HkR8VH10Sn2dw/x5DTiGp+EHvxvlk=;
	b=JAQxzuEuJRNN21poy00fwL2K8PEeeM4XMD4eCD6rplSNi5ARhNR4XtbIpKla+pub
	6/5TaZ1aHtIG2et1NedTb14D8nwR1SYX2XyDM9fUvlP6sSkTgFvfpfTZ0ql3l2sFcQi
	QmZ3DnLtqTiZg5YG3tPXvBIhl5BQgZim/EMU0bzE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f73e6e002-52d1f423-b3e9-4e1b-bc41-505c2e292333-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5942cda86f5ca64dc26d7ac5bb872eed2defd3935e3809e18699f1992b442260
Date: Thu, 10 Mar 2022 12:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646916984
