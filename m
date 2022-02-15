Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E74A7C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644956185;
	h=To:Subject:From:Message-Id:Date;
	bh=NPVCuaiQ5wyzCqAel7+uX0HB/PmGoNYtFiKWRuttgSs=;
	b=HBOg4KYo98Fhl17Q9/GjLc922419TqZFtNNOmFgMIm2uCLD6cA1hvy+f1ILEqVxx
	uA953lJ1w80salK3XSts0nB0Hw08xvnlI0nFZw4ZKlepj8VrIEOz0upbgzSbsYIpQ7i
	2n21R3sCajwUmD22ORf3VH/KkTHADJHeAPhkGsp8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644956185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NPVCuaiQ5wyzCqAel7+uX0HB/PmGoNYtFiKWRuttgSs=;
	b=gXQNVDj6cDuiFP/CqRbFP+1KvnCzHt9vXx7/yRzLpDArqgGLcipQczI7THwBfH2C
	toQhHWrqgavUE4tU/yc+GIqXM+jyQbHoJbw2d3N8K5zvKh2MpeIQhNefWkfexp3TdN+
	dBWGD9pnZMnw68656lFBkxrE/KPByFUxxW4YBcBo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eff0770ab-b43605b2-17f5-403b-a238-b34bd70474c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46a1d44d526e5d5e99657a42a87cc510edf8f0fd9244629642b25ab8aad94541
Date: Tue, 15 Feb 2022 20:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644956184
