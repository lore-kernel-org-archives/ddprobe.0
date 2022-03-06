Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B095510EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 18:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646590285;
	h=To:Subject:From:Message-Id:Date;
	bh=E84Zobaqhk9Hn8jVLcx0Hnw/5++Mr/6W7dVn9yWNj4o=;
	b=GNvg10526wnBp6WvWo/C2KP1m+O4UGmuiSU6O9ve/WB3//5HI3UOKPXcSqCnVFFa
	QB8iwBnIwsmoCpFY4BCbqjj0qT+tIQnMfQvFeoxW9mcU6W1I1/WPyDo1tmVfWBoaJCo
	AtsKQbQfXb8UjrTaNe61x1B6iaLhgdu+GsB8jX/g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646590285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E84Zobaqhk9Hn8jVLcx0Hnw/5++Mr/6W7dVn9yWNj4o=;
	b=JV0omIuYCZukc9ePvwECXQnnQydhE8MYSxdwkbX3YjV+xdle5HJno8ztwBWxD2+k
	C41FJsSRDTsoHUvVDThFgZAA1UfDHnvn2gDFYiAKoIhC994G+do8roAETPkQXhew1Zs
	0VIp8EyG8G4/lhXXc6mRsx49zIQsAUwWjc3jWrW8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f606dd3e8-67e452e3-e7ed-4c76-9b13-d464093ae937-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be407cdb8b8cba6daa1f131d34b710fbc63608e6effef36fc05d3414b479fa48
Date: Sun, 6 Mar 2022 18:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646590284
