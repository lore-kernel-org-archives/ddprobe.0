Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B6862102
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 16:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647016584;
	h=To:Subject:From:Message-Id:Date;
	bh=aXZqL2QTNCSe1ASc37OeT6qF1bzPc51ah/E9yUFDKFc=;
	b=GwYpZ64fPQWW05HO294qjIFlrupL6aKN/VEEz3MCMKy5VHB/fDeWHFX1MAGF8epg
	1zwR0GO5JzviW6YFstma00FaVLY778UoKf35BjTuF0YXKH9imj0SFqn8zxq+s3iI6O0
	WL1HjvmxzGfIoOKhECRHTZqBU2H2VKsiMEbpC1tc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647016584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aXZqL2QTNCSe1ASc37OeT6qF1bzPc51ah/E9yUFDKFc=;
	b=ddHuerP5sGZ3WMcuKF4BMkKcy84aCfFZG7nKRGC/GOfLMH2YxTf2/eLooLJJ6xe7
	Ty0ggpSXU/8Hw9ATQHj9cuQyT0wyRCsCWe9q7/N/Fx8xWZ1pVlbKdHeOh+WLG8UUeIM
	Rv3qkmzaOhZu9p7ZtDsz7PwHjl5gsOYvtcJMiqR0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f79d6a676-49149ef1-55ff-478c-bd18-e1d3d81067c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2cb8ddfecc964a4c3d26ec452868f03954541bc8063abb5df19bd014796dea3a
Date: Fri, 11 Mar 2022 16:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647016584
