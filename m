Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 774D9437E
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 09:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646732484;
	h=To:Subject:From:Message-Id:Date;
	bh=9YYndepdTOSoiBsmXAcXiZ4t+1dY5gU0WWD4XEeuTcQ=;
	b=h8fauvlotyKftdtt2utatRAJrXhxVtvPqnXQpaLg9x9/k6lbJ9eeCIgr2hgLVDfH
	rjKdyTEG3EmgMU8Bct7WFNfE8C6Cvs58v7eiiPTpz9BXCgyZWlB9IxTQrtGRU/v8/gr
	rmthl1H9s0+uCNdv1AbICzJGP/sWMhWl6b4jT04U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646732484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9YYndepdTOSoiBsmXAcXiZ4t+1dY5gU0WWD4XEeuTcQ=;
	b=kCw3rCKjSVchN1489DrSwVwWQTSmO/CZBJLS6Aq2XOIEVM687Bxaa3K6xZbrpRxv
	HU/J+o212lr6RKJR/wP8RJ9yrIxKHOvMHQUAyuzgOgePwuF4ttFmkvRP7vJhzjJHfXR
	GkuBdzTG7xnMc45r7yfp+/WMSpdr+w4TjpPF7lMk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f68e7a083-c78d1152-9674-4a29-99d1-ac5332e6d25b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c49cdb82a9116549854a835ede0f0c8bd9682aa5a8e7849d5bf4cb26a5cd398e
Date: Tue, 8 Mar 2022 09:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646732484
