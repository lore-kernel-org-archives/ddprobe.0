Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AAA4EA0
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 16:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655138579;
	h=To:Subject:From:Message-Id:Date;
	bh=wEqNIYGgHITQ9kFnVRpgOzLHXDm/nX17fjdnYb3gZUE=;
	b=fvof7LLEx62ub/aLekeSu1Oe52dA1nB8tqMvr+dh5KbJuWubE1alaCRvS6bn/4PG
	mPO0xPAlOa5P4rDspePguKgHLQGo/tuOXb7152iswX3ZYTEulukmZ9K40f8jqP9Tv+g
	vnypwQjOIqGCUXeiAjaGC6K4m17LtsKFRP+nmYjM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655138579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wEqNIYGgHITQ9kFnVRpgOzLHXDm/nX17fjdnYb3gZUE=;
	b=YoNUJAhblh2Z5G5Ae2vU6WFh6fJ2d0RIH+485rHlO34DwjGL09CnH0kMv5lIkfB5
	gYMn3Qho9gHqHTqfUfBRVgSbBhp06bLYgcM7d5Td3vHxdf34eI2GO9FnIUYTZnTSrJ0
	XtARCFrrmkVy1ntmGZY4EYiJ9pWs0yhR+0o9XboY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815df27359-c5971a25-c4c8-4e5c-985a-5055d190a527-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6dbadab3f02dbde5a1e19cb3b89fae6c0545b386c9fbdedb6fd0cda8e5fc274
Date: Mon, 13 Jun 2022 16:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655138579
