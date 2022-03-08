Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9013648D0
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646745984;
	h=To:Subject:From:Message-Id:Date;
	bh=pGaSeprw0Bt2d38v0q3r3MarOWhchExDazog6dS7nTQ=;
	b=JaM7NQoLhkx6np8ZWroNebppfqI2I79frDyWpje/wLwduckZ9XYNRz73mZkkZm3v
	9dgQkWHiQU5S/9L3JV1rOdtyCRCdbf7DHORgdyDRuFcurkEi+/Mch2KrEoyDstAysSX
	H9+rY8Xqd6RhC+tu5Do0DQRCFzR3paIxFRWXsuH0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646745984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pGaSeprw0Bt2d38v0q3r3MarOWhchExDazog6dS7nTQ=;
	b=LtHi47QgbKavBMH/lQ71qx+U1oQQdWBte6z4eDM310us0535hCEVesflv7xN4iT2
	/OYqpPsaqwHnghFqw7XH6jzI3uoMmNlz2ZJF5qL3aDU43MIoVWdO03FGyBNwQzdXt1P
	NUlbpfKGFpkyr1jUiMVqgYy/vmCJbME0qjq2hBmk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f69b59ede-8661dfc3-d101-4868-bb3d-9d4fd9bea74b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec321e0feb434c0cb6c4415ce10601dc82333ff7124b4d0c8d3de582c8cdc8dd
Date: Tue, 8 Mar 2022 13:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646745984
