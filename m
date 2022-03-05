Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3501B76
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 15:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646492484;
	h=To:Subject:From:Message-Id:Date;
	bh=C9PmzrNbUG3azj7XRoO8bTFlXYm7pZwSTbT3hxNXLN8=;
	b=awCCqR+EypoGKhMKNDqae4xp4UoaHuLb2DPY35p3XhqmmTxyzx+rs40QroPxYKXi
	DQyYQ/znNPW6Dbt5XZh0+SaC7ySvpCKnYRHhjAVARaGHHTq0veN3RkjCxppviOMWvlU
	2/uzVgqX/wOSinnBhC2wJOz00Z8CpRtKc20rK5zQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646492484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C9PmzrNbUG3azj7XRoO8bTFlXYm7pZwSTbT3hxNXLN8=;
	b=VJ+j1zC82nG1WGpvTEBxR0ib4L+UEA2bCPqlkwB9H+vy7ScxJBZX4bp78vf+Arhh
	6U6ScoV81UWqkEUjoOwMwzTrzUoJZAyEijvqYER6TjO0As19WYPjF+MczodFlmOtP7q
	ipX1x6ax0lalq6YvMJqCXir07Mq/ssVB4v1GpLuc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5a998480-c62cf395-f565-4d1f-b2e7-8fc81aaa13f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2669ca9721e2824047444097914b4b90d708fc31109785fd6146db41318d4eb
Date: Sat, 5 Mar 2022 15:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646492484
