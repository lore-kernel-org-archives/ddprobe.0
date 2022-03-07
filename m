Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701EB367A
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 04:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646626284;
	h=To:Subject:From:Message-Id:Date;
	bh=MfO5JKwpwiE1sEQdAi8wUErsjbMa5CQKNHYsJK0dflQ=;
	b=L8TtKPsg0vcWpgGpVqiqXOdTIw8h+FZ60e3RFVdcowEq9PZJNuTEUo8vZ+EoZ/+L
	wCncNA5LlfCPI5enWclhzr37NN599NMTqe9fa34D8Qk9OJzXcwDBQYzY5gbTxs2Qtr0
	JVobfZWgqSfs1iXHzDSLnjeYOzGVWjIlZHmQtoig=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646626284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MfO5JKwpwiE1sEQdAi8wUErsjbMa5CQKNHYsJK0dflQ=;
	b=kebWlTScucetRTtAhz9HjAL/vaQWV+4dpc1na15QkKqxAvqV+VzW0IpViciT9ZtY
	u7BVazfGxUYDj+V+eXsZEeXKXfTCDfPeiV0zRAtixzd4iR/e2TjK54l/EY2Xmn2Vg8O
	l1uQhl6jGtbLO2XKUHtToer0Cy5A3VJR7DXvWEhU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f629324ef-7983f539-6e3a-4c9c-a572-3db774a97b64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb3247e0b402cd81cb2ae3bdaa1d0098feb12bd1828badff36babb4619bdfb63
Date: Mon, 7 Mar 2022 04:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646626284
