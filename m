Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1BC6EDA
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 812CCC433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662816053;
	bh=TiNaPDU9obdRhgKfAB9IoGNBsmo/hy3HQ0LtzquqhcA=;
	h=To:Subject:From:Date:From;
	b=GMNhppvlIIjGww7qf1C24Rqf307qoQPr72DLYqSGmCxu8g7R+uiTiP72BaivB07i3
	 6rwU76jpfUsiic4RtPWYDgBInilgIYk9mt+NH23dCkMaXaKbZagInIRSEoXY3Bru0f
	 BgS49vyTwAgjJD1Or8VyZO/cs4mqsj8+Y/U6/HBw2vsStNS6K95mORj/tHGuOZhk+X
	 n/GNnkPj0RRs9RdQ0vmCbrXX1WkZ+INgGblkSbLyAXvYNdy3gkGXGp+HqBsrv54DvQ
	 Ld332I9wYOy2tvCwuN6zfhl8QjHOXUT0nF5tA8rRtaMzNIFSevtnGPeWwO4b47xg/a
	 +8Y/ROe+kemRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E964ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166281605334.31667.4312965276433065000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f17fd667029f8d402a5eb96d82fa3a497418432434cf28a46c10cbe8633a5eb
Date: Sat, 10 Sep 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662816053
