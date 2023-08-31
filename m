Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A241855
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 05:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D527FC433C7
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 05:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693461248;
	bh=dqEZ9pYVgDKFmJzhuqeEnaW7DaQAI1hpJkLXbWwaW+s=;
	h=To:Subject:From:Date:From;
	b=R1iuKDt1EjfJIoiVir8HDXneovLN6IekxuYMri/I2pp62m3lX6uZzlVLiFzvC8yC7
	 TH5411g+k8amcYN/5n2AtLVZVpSqrr3lt+RriXBEjLNOlK1Usw2AJqCDzolq54iXdf
	 rgnejRX9TX/bHpn9v8pjlB6p08jP9tDuXokzkFUaRnvTMqjLVnvqZKK2rT0i0z7Vv4
	 GQcvef8d2ryll3Dv4ET5L6+vTSFawNqbpjqSjOXndvsdw1AIXkVJMyqbsss+xqfEzo
	 hA8IUR7FQSoTlUz/hXvOsD46sgRF9nyqHDRrUgzoVjM6e1GtQHg2cFhxC9dVffbsLU
	 nlaNdXw7lFEPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D4EC83F10
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 05:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169346124873.8349.17300975097483784871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0ee6622bc99ace9686cd47f07f412a92315be60820b73d8e83ace836f0eb38
Date: Thu, 31 Aug 2023 05:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693461248
