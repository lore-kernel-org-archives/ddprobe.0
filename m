Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B76154A11
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69FC7C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664388653;
	bh=93RKadADE9AOBGNj645agH6FX6F4d01ggE6ALRfOCeg=;
	h=To:Subject:From:Date:From;
	b=UwVdGbEPqb7Brwn3CV7ECjt5miHbLCN7xM/3kmvTSMx3i6U8BR/zw0hEDyqUo4IA+
	 XBNR6cgeLNlkjd/sLT0A/x2Hc0oZOJdUaNkAptp7Zx0ocbBH8mu7SJwr7Go3hSu7Ev
	 4kJwjyI8gkwGEK4CI8hVDHBTBF5KtfKDYHWiZoq6OWocMiT4GwuZSWKz7JC+56k+RX
	 j6+moDDZihAAHqvWY8Y+OpCrQSGuTlGpzH7QqgzSsbEKgpZlGYqfJMFECsipysZBrW
	 07Gto+aqczXtiqWq22iENd5VfyjlwWFiO/8sHnN5W6XlH8y3ASUTP8gtHgYvJsHg9D
	 rosd3RD95L4Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FBA2C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166438865331.3656.3592494591269001474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c107cbf3b8d417c70db3329a57d5850cbe7d5b693fd7371cfa7c8427cd85ee38
Date: Wed, 28 Sep 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664388653
