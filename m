Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C272964E
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 02:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645581985;
	h=To:Subject:From:Message-Id:Date;
	bh=rvifgENPkNfKg7hp0BIB5NBrBWCOR3ui6ShUnuje48A=;
	b=Xx8e5omSHMlzEnJOTKJbtbXHoW8Lkrf7Clas4CfYzSJFRZ7bCIZJI1AFluiluuQM
	cmKpRgNc0Als1oppYPzLhUxpiypo3juFRcKLpcmxcOWPpaI2r2RlveirHfAKa4ObIs/
	crXV3r+Jin7yzKq58++gL/eo+3CAmMTwhqTa7xv0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645581985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rvifgENPkNfKg7hp0BIB5NBrBWCOR3ui6ShUnuje48A=;
	b=ZqdoBG7Tq+PZmkVHtf9/FVbGJsnX2SQhaC90e2tkKC9Rc+q/Q7QLEEmLOjbgoIRV
	gcN2Oo7kuGrQol74uh7gtVvBEKFhW6zveOGJgor4WPS254UeZyaIyLJVmIYrX9j/dyB
	Y97hy9VtgM8Y53kDAtTmqhiB0v+LnNI8Xv6cwmtA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f245463d5-df179b4b-cd6c-42c3-bab7-dc5730bfc69d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68ca8eb7f0ff4ca7091e44c37ec61cc7cb359d0f9f98d4a8dfac11d3a6732dda
Date: Wed, 23 Feb 2022 02:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645581984
