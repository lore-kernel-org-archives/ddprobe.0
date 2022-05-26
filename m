Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BA710EC
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 02:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653533219;
	h=To:Subject:From:Message-Id:Date;
	bh=l0DUr8fpaBj2FfEvkEGNVzePeD1sciEOeJ2ExjFZPn0=;
	b=kBF34s42LBARoC99e60SLDs/2gVr8fZKP0TzDwpnb+TNtTKW8ZcQEYz5Mp55IvGG
	xQxc5qd2Ft8pvZIXDJqASVuNV9MDlsHHJa5hvQnwvSnSMXMQjrI2D2oeLFMLGJJBlpM
	lQ1aTl+lgK0ZyZRz1C2DQAq3hFTOFSbJlgn3yKrs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653533219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l0DUr8fpaBj2FfEvkEGNVzePeD1sciEOeJ2ExjFZPn0=;
	b=YNs77/wMe255vxcq8r57fub6yxfrsjipHIQRna01/meHejc/zhMSnYvybV2mu16H
	sgKFMNgidXhLOQ1gc5tdiiuTwzo/D+I4Fk2J0QXvrd/CpTewA1QZTF8LVOdzakwqTEx
	mHGJrV5R0rl8dOc6wcJuXkr7IDnoLVFXhiByS0gc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fe4299bd-95509405-7cea-4f12-893b-e8386d840d38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 938baaeed15995ea68e6dbf0b777c8f130c01238b48558211725ff23fea89c85
Date: Thu, 26 May 2022 02:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653533219
