Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DB436D
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661055652;
	h=To:Subject:From:Message-Id:Date;
	bh=BMl3fswSn/L2ny4kamoIbaNZ8r2whKgi1NhU8Zdn5vU=;
	b=BpmWU84nlCtfv6MJvY3w3CVQeh6ypTfYdYgLV3JRemLgpXl6GnpneWaCt5/4o24t
	cpZ1u1v9RAMq10wSqCoNBssu7E3PEgmmb9A81+6TUuTEcEzTE7c5VNZNeR6SEnjoDPj
	iEjBL2UitJh7mYmawv6m3oyIgW//MNKOcFFWF/Bc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661055652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BMl3fswSn/L2ny4kamoIbaNZ8r2whKgi1NhU8Zdn5vU=;
	b=IAXhHxUHOM55WS+FpN7tttPzEszsPvnmp32mvxTiAzrYA8UiYMPS8KXIbwFE2RAc
	UhW9KgKrYFQzgT1fRjMjDynchLHBMIFsbdpu7F8xXqIDsXKzbVau5ntXwTHMDI3n4dZ
	gkL04oytxvXovjqNL3o/QIzIFicFRoGroHvZOosQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bea1d313-1032da40-1ab7-42a6-9a1b-dfde536cf1f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 878e3c21c5a28628bd032643da6acf0baee253a45599f4d9e3db4cce84c25b54
Date: Sun, 21 Aug 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661055652
