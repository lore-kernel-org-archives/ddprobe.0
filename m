Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82ABF7B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 18:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645901185;
	h=To:Subject:From:Message-Id:Date;
	bh=mTtIH3IZla/aGMX6WATqAJ8HKewZ1ATBiDT9FOHtA6g=;
	b=bZO5FjDhJlgovRNGXx6yGOCkibwPZ3U9WI9Ufrq2CkYxo1iIbD3z/375uXDxLrFL
	GR3b8CfcuYC5PSjDDKZ5X4ec24uzLSM1OQRQ51J6qDNeeBKHKEKMTg/bDiZx6396JRr
	nY8ko2ncAfOHuG2WIgpcA7sfgCg7VEGj6VMkpCqc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645901185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mTtIH3IZla/aGMX6WATqAJ8HKewZ1ATBiDT9FOHtA6g=;
	b=Z9eZBnI5a19nHtbcrwxSMOXHHv9J9c+NBSH411EgLBzGdTt3uJXYQWdwORGF1jUE
	ntY08xR/d9LLeeX7CQFVVW+5FCtj+/LBkQA96jsVSFzdZ3s5TRzrgQ6q1+367P0IrLN
	WBru5XVQvAdZD7SDdzmbTw9GHgKQoQt0rYV6TKC4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f375aff0c-1faf8267-80cc-4ce5-8cc3-fb5701ca7403-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06f74abde68d5d9697c0e9d03494bd9d2474566d0bfec750f5c4cc79fa5c483f
Date: Sat, 26 Feb 2022 18:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645901184
