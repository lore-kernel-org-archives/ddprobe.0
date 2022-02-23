Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BE577B
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 09:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645609285;
	h=To:Subject:From:Message-Id:Date;
	bh=FfD1cxiWv4/PteXwX0w+K+CkrZ72bC7lzuU3Z0NBPHo=;
	b=XwydV23D50YNJ+4FZ7O8ucRtjj3vRGwdecyA8CVDV2nmzeR60Dt3XVXSpBKtpuv6
	+9I097B3yMfJ47ByUVygL/i02YSHf8AF8CL6YpVlQG/Mq/E94lGRLDTnMD0YkZclz0b
	9utA1ZlZlJiJOqWTq8ZpC/v2sZ3WsGfp9YFdt6bU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645609285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FfD1cxiWv4/PteXwX0w+K+CkrZ72bC7lzuU3Z0NBPHo=;
	b=bVZnexvgLpiTN3KJ6YgF/WFnaTnyEF7X2h9F6pOn4ovJ20OeEpCivC9yfRJdB8xa
	BjTVpC5SwBcTknSrZsec+Izr4LtuNjep8ubm90Yq5QIRTwdJFgS9tzlIrXDvjg9OtQL
	c/vmGJwtxQQLf0zVZE0KKofIOaOVFzzO1ODng3PA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f25f4f4a2-61732882-4b1a-4d00-9c4e-23139e7dfc04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d7431b2f3523c2d3d170b55b80deed53c73cc041c7314430dd7b3df029696c8
Date: Wed, 23 Feb 2022 09:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645609284
