Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5931F2919
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 10:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645179084;
	h=To:Subject:From:Message-Id:Date;
	bh=MbfwO0ya3VyrVKWZGqxXYMeoZbwjGXCXHcBxjiYc82s=;
	b=lH9oi/F3ZyuyNrl0CxOCkc0SQP1CD3WhBSLPQrfUorWVNASkk8qkb33A1eGgs7C3
	ddKS4KsqTLrBlpVZ0kXYy2PPmACJSLaEsSRHE/Dc44uay0KLYKIXLh4wuQNt/7B0/zI
	RNUak8cWogDHKJ4YFHMp5OYJMhXRTKvV2cTP2Fk0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645179084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MbfwO0ya3VyrVKWZGqxXYMeoZbwjGXCXHcBxjiYc82s=;
	b=CQ9B4PonI3lY9K+1/R3lkt8105v+xy0KU7awjDdvnHALGuJUxDbdeKZf0KMq0TjF
	dSKJ2+6IjaOxHwggsP9ZdXDXiLqqujPb6KSezw6rqjIH1YgikF4u6bu8hF7JcjaZCGj
	oxYssP3MWo3L+8L4KzDsX9t1o0Q9l+uTULr+W+uA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c50a015-9debab5a-e906-4cf5-9332-25b1ea4ee29a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 825c1823e00664f318fe0b2d5e94c25383935dc007edd070e468c9a11c158d2a
Date: Fri, 18 Feb 2022 10:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645179084
