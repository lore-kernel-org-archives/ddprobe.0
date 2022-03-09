Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7985F4C80
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 16:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646843784;
	h=To:Subject:From:Message-Id:Date;
	bh=j3qDcvUYlRZkum25qa896CV9d3mOGS4rgwbWjkEyt9E=;
	b=T36P1VdnHSOoyPYuAc3WRPl4q/13IxaYbMGr1Jq92mC4WX8DFkJjf5jvYNW52q0r
	PbjhkQe8eBTA3TVAjiWlvgMn8oP+h2lh/AwVmXgK5BWqR++JuGIQuYB4duMNL6KrBhf
	6bm7tjEfT5nkxp/Hd591+ZTL+Wa9RRYhIyaG02xk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646843784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j3qDcvUYlRZkum25qa896CV9d3mOGS4rgwbWjkEyt9E=;
	b=cXdHHLTFtlJ1vg6yGtFZU2Yr08ZQGy1IkOv5GCF7IrnYOjUq3Y9KdUkeHdDTQRhf
	3h1TKNlY6gU8u/ud1nLw3ABFMNQXytBpd9h10dyGXfviHaqQjWhJNBEnWMvnbkGZgSP
	Dp7Rp5iACn/NH3RhCnQVaFRRhuebH2rxfFSVaIlQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6f89ee64-9cc27c1a-088f-40d6-84d5-13acbceb4dfe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e644ccb1367888309171df422dcf36b0530d024c4ae71e087035484e4f5b3667
Date: Wed, 9 Mar 2022 16:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646843784
