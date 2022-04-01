Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B63E137F
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 17:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648834678;
	h=To:Subject:From:Message-Id:Date;
	bh=W4wQrh4SMxdpG4U+XXEos8TNWHHNd98UWA5tMDC+ABU=;
	b=TNNnRzcJmxvCdBI2wufuLkUUfIJqB15ZAxChwcPDQqN3JtFphRHJWSO8fd/cBJqJ
	2v4bdQ96wfJcfP/vKEnjeFMnHuMCShaMPDCnyP+6y51X1Q6TKDt5O1hp2p6SJEC6GTc
	XV2XRkVavBjE6dwdgTn7PMuYdUBv+hEFbZDaB7KM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648834678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W4wQrh4SMxdpG4U+XXEos8TNWHHNd98UWA5tMDC+ABU=;
	b=QqJ8V/ZkBBeJB4X9BirCjnaI+gz9njNzp/FN8fBGgQdS+u5jr1lz0rk+ASyEsJWC
	/iJn9qnulIpwGPViagjoStTXF8PvI+bq4Hoanxmf7ygp0zPKYLZcb6etjjZ8IXRq2bH
	PqeK3pIA98xDt6CHfapdGo4eSLnseye0at43oco8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe6348e60-8036518c-811d-44ab-9569-eb1204c138dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8913bafc399506a24af9c8bbd5a4a90d6b3aa932d74b4238b90b06489f0f8481
Date: Fri, 1 Apr 2022 17:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648834678
