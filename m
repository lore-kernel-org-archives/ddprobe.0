Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A98E653B5
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 14:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645282585;
	h=To:Subject:From:Message-Id:Date;
	bh=c6SscAnWEEIsYQN1DX4/BbBM0xtVr6FZY6g0XWjkMqQ=;
	b=aSejRJIj+S9g1FHlMW9FmQOP8dDyam22tJ01dlqX4FDaQ30OHWm+ZdOHCcxbSE/r
	1bO7eAuvmEPsjbzY1XcYRd9SKhUtsKV5tta/42ZlVfI/xu+FIquLOnyWqwhgtkM49VF
	OllwBojhjs6ixQaNcdss2tTAe1kA5hnUDpxvFh8Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645282585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c6SscAnWEEIsYQN1DX4/BbBM0xtVr6FZY6g0XWjkMqQ=;
	b=d31O0kSvnSYX8UCxrz5ajyikCOc1NgAtLOpc42Fzktlaro5iBJPva0UeZoq7ifJl
	/jmxsUDTQijLmn9dUPxu/cmU8c0n2uSVhKgTyjrHdPrFXM3DsQBIHzvwnIbEAy92dGY
	BHINWuo6fD6yK6OtbJiCj19y7QNt6J9eo0ms4jlU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f127be8be-dd1d1584-c892-4182-8e29-ae35fbb9ae43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e66482daa2c22f60147c5bf58d83003959c828f4182ac5dcc2bcea5e03af58e
Date: Sat, 19 Feb 2022 14:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645282584
