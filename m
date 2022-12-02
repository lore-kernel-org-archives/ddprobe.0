Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D17E61C2B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C0BC433D7
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669973454;
	bh=RRNNDa+Xm9fH1chONSxpjrSHFVWPTAe8NsHgUTOONxE=;
	h=To:Subject:From:Date:From;
	b=KnYCWLVOMPoo+O93Efvl/rpgpwv/OUCDOCmZEMSdEdJhHhe8BvYsBbDky10sAan/K
	 IDYs1qJ79YN2cbiRfgn3AZ8PTn5yYizYv7PKhEraGWi1r+JisC0PS5snWYcQ1yCUdD
	 mMQSit2Ttr3uKeOH1pdE42kDyfg8EvW/yakAzjdOKMb42N+tjEFpAMe13C/BvLHX8/
	 2OED4W9lEQ1/8TBt/N2HVWv6DjHK1iTABVWU6GQq04rjcnfLamaolwqBuSibsCvfUG
	 qolA6J0nX4X7dmBVu5W4R5nLYTbATQh30lVpI7aAfE7RzyoSNJsNyn848jSNDbQ++w
	 qjhZtoCR0Ajcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 568F0C47088
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166997345434.6366.1866452058180556094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b23e63ad5301e5a1b5bd1c594d30787fd2039bdebb70926d95833e905f34e59
Date: Fri, 02 Dec 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669973454
