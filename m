Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93DDA7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646913984;
	h=To:Subject:From:Message-Id:Date;
	bh=sAobF6cxIosMI9bfYmn9uFwWM7ZbyTmKwAnPvbX029I=;
	b=GIws+yRBXWa5wedaBRQVtCWme2v3rzzcmeilOyp2jkITJdddiR26zOuNxdiMwUlJ
	JJwZZ0kq9Y1Bx4bN3K+7Lyj9Smq4kr770nL/2g+vdwm/xcE9X7CjQFXhqsv50XV4zLb
	1mkRMEyRvgJjB+0+4NQB2QPj4YDDfwglOUfEStTc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646913984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sAobF6cxIosMI9bfYmn9uFwWM7ZbyTmKwAnPvbX029I=;
	b=gSz1EXQ7fZzhSBkz/+9U8MMy7ZGk2mmkIjdLCl4lYSRLqeDePh1T0intOr/Wy4Fl
	upmq573f7y7zV1mUDHLKgaANh0by80AJfRJstc0Npg1frQ2bJtSiNG+IS7AtwjxiDEc
	VwImAtAbJGuamjEkvcF5NgRjBMvR7YkjALhFfWsc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f73b918d5-e3630a99-daf6-4fb3-a832-91d57ad9579a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a65bc99ed5ed159e5e3eb74fd16ec064ce044de4de0061548bb2b13a4c65391
Date: Thu, 10 Mar 2022 12:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646913984
