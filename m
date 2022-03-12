Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 887052F26
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 18:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647108984;
	h=To:Subject:From:Message-Id:Date;
	bh=q5K0doYU6L550GfRPg6tqDbcjYtFzzdnzJH1Bi8CTTA=;
	b=OlTa0jICpAjoBGx3iwVphfW7Ow/+Q9sDpVPDGy8QpDfnAxOHNhcYeiqrdD0uO2Kb
	3nLkXS2RFGsFWbfVK6mtk3HGEUZOstExzX2TjIa32rAGJ+a5rhH66w2AsnY0a7A3+yd
	vokjiWJEqr53eeWV5rcBfbR+hnAhSY5UUoa6HjnE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647108984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q5K0doYU6L550GfRPg6tqDbcjYtFzzdnzJH1Bi8CTTA=;
	b=c3jCYHPjDVDvlPJL6H8fKzGJK/zZIJTu6AGzolYetACSJSQG6hMETV1SNLIbMnLx
	8XrEpOrw0WUGnupAp/H7nTjnHimIzcQg0kTK5zySAapKgGrnu6dgpLGUjDpUhFbDhiK
	OvyQM6fEBY6Ky/y7xDVGokZZvcbaShD7AMK2+uUM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7f588f90-713206d7-37ad-46bf-a320-826b05842267-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 082ee8fdcb442de12b49e243249f0475c4ace582ddcf63ad1d5624592d81d4fd
Date: Sat, 12 Mar 2022 18:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647108984
