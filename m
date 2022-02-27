Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691662F27
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 15:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645974684;
	h=To:Subject:From:Message-Id:Date;
	bh=HPR/D6tRCHyh9oGfw9WihHBUl4LHuxGmms9X1vlxxVQ=;
	b=KOzGSsdseXqIP/8Wz6vjCh+i9f1GhtCg9xKl4z+Q1+RrOJE1kPuf1mtg/+EV7uUP
	LONneCZdo6IfIUQ8Vcex3VFz6k+1o3qvcz5LtUgfbZnbNw5R4IOpS3fEsF1cAhoSq25
	/8+4sE5dpX4gWiCaksaiVX4ULrUlbg53LTa/ZNDk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645974684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HPR/D6tRCHyh9oGfw9WihHBUl4LHuxGmms9X1vlxxVQ=;
	b=KUePUEZCqKPtXPNeDC23OvhcjqHGPM4+8Xa84NcIIvxq/oeb14Sk/bK1cBhHiI59
	HAAmJSGHI+qP0UmIiDjhmcsdZiwbHdKmIf1IcbyMEp0tYBIxsOIYQk/99VCpNzA50Ay
	8/dy5EQNTRtmAIMjDCYN6l+J1jtbE+myTxcp5NlA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3bbc8459-89732bb4-79e3-4d60-b1c7-47d26976e76b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 540cd0e6f034f82160e790db8c75304dd6c227a91c08244c47ba08e2651c8bb8
Date: Sun, 27 Feb 2022 15:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645974684
