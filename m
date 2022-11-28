Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F8020E2
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70CD4C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669623654;
	bh=6hHBWqORdCq4YoYnf7BsV4zzVBCcnM02Iq9tjOH7so0=;
	h=To:Subject:From:Date:From;
	b=hgqs56SEqXd3eqg2FEKBI9ov0dcOjhx/VMOpLolEjp6v10brD+i5OfrVt8oydA7ms
	 YhFWSkG20VWYkZko30m6NlANKU/pW0SdgxY8TZ48yMl6ixVD2bvG93Huj69rEaWCs0
	 /b+ZM+jeExjkgkv4LygcShBhL2Yy+2zkW9PPaCh7XisLrhote9dtH1YD66aoSrl4wP
	 ZCnq+a/qmWeLGysSVgwM0cMpl5PJG/lYyiU0ri3eBzBCYOEZ2z4qW9CUTeoCyYoid2
	 V6ThduQ84ZWRYqJJ53xrH5mcLSU6LAOkoDnhlE4co2Lik4JDarY2R4xjsEDSxdbYim
	 5iVo5eWldXZkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56325C4332F
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166962365434.6314.2270103464473615900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dede40043c87f2c4d88b124a75133268bb41af28398292bf4c8d5f4cfbde6b3
Date: Mon, 28 Nov 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669623654
