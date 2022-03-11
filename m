Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A17AA7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 07:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646984485;
	h=To:Subject:From:Message-Id:Date;
	bh=szjdmqfbKxjE9OjNs4yyL0AdnXhJ3AzepxaIF8R0VTE=;
	b=Fs8PLZmcQl99sCjxloMl/GPDlrVYCgzIxFBFgd/E0pUQRZM4cEmyKe5oU1WBBU8F
	ER8Aj1+/mv/6EwPkF3gRhDBjV2nLZVykUS7Xq6gunz7Yxj7IpHuwwgdpw9QoiDGUOoJ
	7tymYIINsxFAj4wyMI31Wrwa2RKxjfhUnKM88QX8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646984485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=szjdmqfbKxjE9OjNs4yyL0AdnXhJ3AzepxaIF8R0VTE=;
	b=AYdKlS2vRjMpKir9RPlXdvlE6OIj4C3xPkBVt2brCgX2LMgRFM+m5Hkw2eF1+fgP
	LrEeK/5CbuSSrZVjRL2FOn43+WLXZsV/ipUWsX6KL5vCceQ2ucvT9CymmY53XdtyBl/
	BEiYRT1Tu8nLQM78V3cfM7AxMhy4ffzi0sDNjre8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f77ecd7f7-13be7dd5-707b-4766-ba44-415adad71aef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82ca8b5060c30734bd5dcce3fe85f717833889e154afda3c9e0e9bda78a2f4f6
Date: Fri, 11 Mar 2022 07:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646984484
