Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6A14296
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 12:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647089484;
	h=To:Subject:From:Message-Id:Date;
	bh=JgRQ3YLncZPmpzflgkUqbwTwnynbybo8ubfgn/N1Vrk=;
	b=Yfk6XtVvlzIOTF+gVjhIrp+011yDZOA+RKrCqv8aYHo2+L0z9+waZB8dCzmm+qwC
	qCzB5HiUgw9r/rHOaQFoBwQBWWSkU5U0FcWxGJ9xC3/t0bPhO5RpXHKQtvTkF8h6QIi
	97xMQgghCFAf3bgioe7h8Nm0FTeh1pFXRhuM5h5I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647089484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JgRQ3YLncZPmpzflgkUqbwTwnynbybo8ubfgn/N1Vrk=;
	b=M36RF5UKWVUxXQAF/1RfL+dx5e8DPGdv2AB2MTQi11JzJA4LHpLG2r713+GDnVwG
	vtnYJ2cQjoL8uXFw2SmwF8O2ro+tfaapKDQxmVRhbWFwnUd8GFbbFN939WlF+taJHVi
	ruE/b2ADfU8xjrllmOyZOteCJ6YHAIykvs6ov2MI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e2f03ce-431d1020-350e-42d3-ba27-19a499346178-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9a7c37b3edbb4cfc534080e49a2bfefa05f81de426d6ac02aaa39d1fc79d53d
Date: Sat, 12 Mar 2022 12:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647089484
