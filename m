Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87D6373
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 15:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644766819;
	h=To:Subject:From:Message-Id:Date;
	bh=vbCIrhcujmYAxZvakqjNAE1+rTCjhiqvUiGC+xXOOt4=;
	b=R4WUG8jQbK4zVYF7TJ9uvTCBIoJdKXhwtUbo1b7pfrOdydfqjEYhNeqbRbtIamPG
	TaV6pZfHGHo2UJFpGHWH8loF4A8SPZem1iNVGgiUhwsqSUBbqM9cN6TB4NgWyOCxqLF
	QNI/TPLRm23rWbVRwLsFwxE9kBuG+VEO0cUJulHg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644766819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vbCIrhcujmYAxZvakqjNAE1+rTCjhiqvUiGC+xXOOt4=;
	b=kqKT+ecT7vc1hXoLAHkjgoItcwXj/3PfOIrHwxaur2qzX1APS1vS8rCsxWUUMl+c
	dAqLrev3FuX1dVv6GOPPw8dOF2euurB+H6f/hhrpWBedZF6F08MvSohlzCOU3ARfskR
	w7Ae+Va0+uUEekMZsBVk/6rv8dpeyNH1lCd+b3sM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef3bdf30e-56ddd2fa-f5ca-4e84-a4bc-d1f99c77223a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90a747ede0ce498e7e47522e65c555a1fa9e01e45471192ae875cc59d3ffefe3
Date: Sun, 13 Feb 2022 15:40:19 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644766818
