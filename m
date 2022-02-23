Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59514800
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 04:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645591585;
	h=To:Subject:From:Message-Id:Date;
	bh=sjPoDbYp1d+WSsb6yuXCiawQ7TyH5wP+igncg5yE0rQ=;
	b=jMaxQAG0WkRiSiVmiijiubnr5wMU2vqv7y2wdfY40do9+8MAEAH671e/Yc7O63AK
	XAKT1kAb2LBhcR/yelTxOMu4zfR4AKEsA3miaZosqUea1gukh/F+CGNdOmnIXu6ezGG
	OJ1saityWWMN4bCtnwHPcu4fJf8raA7wz0uK997c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645591585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sjPoDbYp1d+WSsb6yuXCiawQ7TyH5wP+igncg5yE0rQ=;
	b=UHC+GSZbop3lmLbd+89t3cgKYi7Gyd4KwFWpr+cHWwHrvmPsaPfjQdsjj4yNZjQy
	xNYAnMckdiiwWTjsUvCJecQWF31GZ3bHymIPcTo3+1LzeIUKN3shnuM1AQMbm0RpNoj
	dGss1wkwOM5GKQDSLq7KrDSqDnnD074LcpIla9iM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f24e6e041-4d397e2c-e954-47b6-a28d-b00e5590da22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e41228097a96f71c0b262ab09da5f7ee86e51abf757b4fc31afb81a016075c2f
Date: Wed, 23 Feb 2022 04:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645591584
