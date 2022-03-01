Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F75D7C
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646165484;
	h=To:Subject:From:Message-Id:Date;
	bh=SQDnuw7qz/MpR8mytYD9sZDIAWUN5ZEuy1JEz7TsLsc=;
	b=VC4qa8X6pAZGSRt2ib8hsazGJWTXoxYJnzWiIoBlkiWZgaHE6dGCw1OUxdRXHD0H
	vWWoTIrg3glsK0qP9J9/JVWZgt+4X8Yn0ERt32xouKvior2sCzkC3WoBZ9Gul0V83T+
	Dp1l34Ua+rpylV9LzE3Xp62HNJU3yBoIG01q/npM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646165484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SQDnuw7qz/MpR8mytYD9sZDIAWUN5ZEuy1JEz7TsLsc=;
	b=BaFNlRCUDJFC1SO/Ffsm6msnhD/VwfpBZL1Ca8fp1WrHVaem/aRfbm2Gg0nBjCrB
	4ehXz/D2LMPH9ETIQa1ewsQKwaghseKQaiUDximFyzVYZOcRu8iKTJs3+h4plV6Gy9u
	7ztjE/29l+eQlfHP0GqZH2FcceE8KSi+YUKc3IGc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f471be4bb-abd3c6ae-7026-4db5-89dc-8e6e1c6cdb78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 064997612f15ecc43e297247e6144a183208eb56c3cfe303066149da95b59962
Date: Tue, 1 Mar 2022 20:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646165484
