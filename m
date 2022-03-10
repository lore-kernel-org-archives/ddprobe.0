Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90B737A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 11:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646911885;
	h=To:Subject:From:Message-Id:Date;
	bh=7Asttbbcx8rnQCJPiYgkPg8yHQLKhdz9hR62WWF2euk=;
	b=Nvk4ij5szq3H5FKZFI9pHpo86Y0R50OrPVY4XLqVwLghTuDY9l7FuifPck/uOKWY
	Wxi2ioUA6O1Ulm114pusUZdefBnL6B0iyymTsk0DyHnWsR2nspuFzIcT1AJgtRMXfB2
	QYHg/nrfI5lVk8ZnjR1beDXsmdNYccHYhz5Xhb5I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646911885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Asttbbcx8rnQCJPiYgkPg8yHQLKhdz9hR62WWF2euk=;
	b=L2VUtep9hf1D1C0aXQmgNwt7pQXx7pjMsdoNyLN+jTHJpqk95dbc8mgvZ89upRmc
	7uYnfNsuEas+nZApEgNABRS5sgwfN/GhP3f8dUwXEO6Gd2xDx7P/XVjlgfVnY1PCFFO
	TDZ25J5Ga0/EqrZFEw4I2m6BvJr2zH+URZi6BfO8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f73990dbd-6fccbb10-5871-43ee-a7d2-86774678955f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c67e648762213f9b6bde8d4d97c9819318a94c6db3f258051d3616ae0aa0d49
Date: Thu, 10 Mar 2022 11:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646911884
