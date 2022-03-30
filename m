Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024CA29A2
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 17:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648660978;
	h=To:Subject:From:Message-Id:Date;
	bh=ucy7/AmfdX7VsS5SJMKH6OvMGpG/fgFhB2dZ98pRV0Q=;
	b=Sbk9XW4DXP4UroeabrkqIvK2zeS66uSm0VkEc9/wHjHDDcBnTF6LHm2wb5o3VgcF
	+kj3IKcdxEAVGfg9ylaZy+BPA8z/3EobrRtXEoDNUIdI3vJh+DDSMmCNqVA0RH2qBB+
	TXDyCtYJfTNbRuGT/tkeqSeSMyr+Zjcs4I72GE+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648660978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ucy7/AmfdX7VsS5SJMKH6OvMGpG/fgFhB2dZ98pRV0Q=;
	b=UASSTJ2+/Zsl9TMc7O4URahM14H+aaUHylJUQ1fAIgbmtihG/e3xFF/6tVDVyK1W
	5Z4jl8xFZd3N9WqgnhZqrj1ko70xZuLwxq/Jc6bQ220C2GjB058vzTSYBYRzreIOfGO
	3jP4VMe2zgU+X5TIk9YSlfhv+8yFPer4gi4LeL0A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdbda1a6a-3765c63d-b08b-4281-bf0a-c7713c408dbe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e678278a67bc5ac68b27b45ba539113b32c8b2a4b61f02ed91c15525206ab900
Date: Wed, 30 Mar 2022 17:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648660978
