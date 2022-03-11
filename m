Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8898A5CC6
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647027385;
	h=To:Subject:From:Message-Id:Date;
	bh=IBiJyDNHTIl5xTufepB9Db0EruehpsBd/OAfVQhujQs=;
	b=Uk6Y+88HDltvGmsPqxdaLFkQXrZq3P8mM0c9xspwHtnUzoWz93XDSCvZHl0KDK+9
	mqvXXe4f0EqJCkKcuKij2eSwOCNvCDZuN02awsrjZIxt3xF6shVUhffNM7CHjsMH0oy
	8lmqGLAVRFWOjxJjbrq0UttybXXvZW/F0I4TKcLE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647027385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IBiJyDNHTIl5xTufepB9Db0EruehpsBd/OAfVQhujQs=;
	b=E+Jv1c2yv7JV+4Ckl2A6wDwsc6jY1RLv525SplCxzpCYJuLAmwzzRc9f92UWw8ok
	v4DJx8a7MdzxK0apSzTq8Hmi/j5vZpeM6L0EjS9KxlW+TBvOFY8X0d2BtgdQC5/e9Nx
	tyAWb6aM/F/2ts/7RUIBQBa7AD7DpLOPSP2rUn0g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7a7b7227-b9abaf4d-bb1b-4472-b92f-14a706a5c5b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb801a8cfff5e0ccb6ac48dd9d9913b2b6c30e66034b31bea88866754b98a209
Date: Fri, 11 Mar 2022 19:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647027384
