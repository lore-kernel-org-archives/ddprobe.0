Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D8D2F5C
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 20:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645648885;
	h=To:Subject:From:Message-Id:Date;
	bh=OiNcAQf7DfpOy7LaKJ1fq0H7+gclZnm1CYv3U79wQog=;
	b=Q7IThZF1KVFQ4xQeOR411D2OeZtBWDPVvNDeReAferGv+jGFOJ6mXM7OmRexA4oM
	2ka7oNImNJ4q79XLQNaJixPud9KMhbXNeFTHvuSAnoWAVUHLZgMtsoGSgt2ZaQ8DeRO
	nw6PBuwA2ERux4DsuJYIdbQ0h21fihRHjCkvMvuE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645648885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OiNcAQf7DfpOy7LaKJ1fq0H7+gclZnm1CYv3U79wQog=;
	b=DKiuiUsdcpK2GP47giUE3+eIa0cBOAS+tiwv1pvQfIV84MBRX19n4U1U0OiRRnmw
	cdA4dHrgi7Qd2DwKmrQ/IDMDWjlXzNMmKGK/Nw6mMmwyQSSNJDISr01uvEqD+Ec5+Zs
	KCagFvaHWY6k3IMVEHyA1Wu2UxMbF7hp35oQkzF4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2851343f-f2f9693e-94ba-4e26-882a-d8402d085af8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cd9369745007f97c4d40d3de1fa7a7136b739a84ca3d4a8ea2f4031519851b4
Date: Wed, 23 Feb 2022 20:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645648884
