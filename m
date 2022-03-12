Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B09FE361
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 15:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647098485;
	h=To:Subject:From:Message-Id:Date;
	bh=fV/99DdOEYsZb3cIwAAuWGBuLVbRZnAmN/rhMkWjWp0=;
	b=H5ruamQhqD749RT8TdE+qFmX3AsJ+LI/FyG1KUD7D8xMCEr9ACW8CvP5QNJoY2t2
	Mf4IESWVxeKjeUWZxfIXrwRSikrgnscGyjJH/4dbQRpVWcLEaxE0BsPbgN3UyUVBzbM
	Z2pdG4Eoe57B99eQcGTqCipPhre11bh1obRjk47Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647098485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fV/99DdOEYsZb3cIwAAuWGBuLVbRZnAmN/rhMkWjWp0=;
	b=MaXF59cy4aLpJryqIts7JMxk8ZGvZzqf9iPxApi43yi4wf6kyX4mUXJ+vbAPwKGv
	0T9g5QCjkqxwTEN5AbJY3UKOu55dZFSQW8UvInlaIQpE1nGMJP7R7jLTEeK8P7oRfHQ
	7cpFMpDCGmdBCFeWYiGpM4Kt6nv7vMolo0bLdPqM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7eb85872-a53d5428-ca6e-432d-a8b3-7142cc82f8e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 264fe15536f3aed246159682a3625070d0a606f48af35c61efb5e60e0ad94100
Date: Sat, 12 Mar 2022 15:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647098484
