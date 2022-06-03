Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CE77E9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 01:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654219919;
	h=To:Subject:From:Message-Id:Date;
	bh=ac46C2PI1lxSQpPT19YzySpU557TmwiHyv2ceu5o5V0=;
	b=AxI1tqVoStJY37w11YHYAhFBuvjDorsHTDQYiw8XBCV+bMxbjd8fh9+jOIMAFs6D
	eeHbQ8JcVXP7IUD1j56rPT77OVwXSxssKmGsm7Y1fSISRRb6QUQ83OjQV+1ro+gjgI8
	2QtutanGq+BPffsUD5eh+2hPyBRKHCQZS+CQ+e+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654219919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ac46C2PI1lxSQpPT19YzySpU557TmwiHyv2ceu5o5V0=;
	b=Pkgyau2/3+hkvWof/IKB+9/oQiS0NSdS+riLfJt0UP1QxeubI9dqiy7z2rLUgoD5
	yi3nKt5Vfi7nB+2g3P2/QZBQYYADThVgC/WcI0rYLSvxWHD+6yxe7ZEe9ya42h4C8B/
	CslUWYVKIKx4bQNI9+Akq3/PfccC3Fx6Tsf8gxSY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812730cfb8-233b2ba7-32b2-4a8b-9ea3-0d93848dadc3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ae74def55c39e8653769d287f91e5ace3d778d5d1a55d909c8158d60d6021ac
Date: Fri, 3 Jun 2022 01:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654219919
