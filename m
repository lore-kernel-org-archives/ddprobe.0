Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E4FB7E
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 15:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646319985;
	h=To:Subject:From:Message-Id:Date;
	bh=/uUE/yYJ/1SMDHm8OK2UutXqPcF5l964tqLCjMFhWgo=;
	b=ZVs1Qa7/xiPZSeCJjGnBIa85D2KeVS9Dc5opMfteASqT376ZxTv+/gcf3B+vyE9s
	KUm8HX2+ad2PJokcudDxHaXtc2Cge7yrKOqb/g0Zuun+Swv2FiW/JfZaGA6C1Q87hPn
	F/04WFHQDi2jjnuzvSUJxpfjn0dk/Qq5ydDWA6u8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646319985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/uUE/yYJ/1SMDHm8OK2UutXqPcF5l964tqLCjMFhWgo=;
	b=XzHvCywFf4XAohXMFUShmqPbMiawaOfL35J+HMbH7ZLpioz93DehlkMpHZwEuLqb
	CfxjmpxlUkyr+hWINUJu0Yrd4bc3vRgJxZWwMMOd5wqEVyHz2m4XIOLomYr9wsDv1z9
	U2rhLEYucvExIZ5tPsx777v0fhw4fbpefwNfFbfk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f505160ae-ea3d6f43-8ed9-4822-89be-34867eb160d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d36ac724cbe35b6b9dcb7a014f4139c81a25a96faadf6dc0f61033f9b08b324e
Date: Thu, 3 Mar 2022 15:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646319984
