Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE71185F
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 13:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655211779;
	h=To:Subject:From:Message-Id:Date;
	bh=hTg99wPBQskNTCdcfg0vXWyYY+qEuMcCknnWYw/9OVM=;
	b=GpUGWcewLH66VB5127lmd3Vx2XP6J+akv+fN/xhBwf9Chw8FBGtyzkivHZoKRkTr
	Jo2V2VpGxshjaMHUQa5mDJX3i8x+d9ZXTdgVOgaWf4Xq2Fd63fWdX7UjN6mZp+k2fyt
	hsuxv8GtqB/x2h/KxadvVECCgxxtc65YJXu7sYXQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655211779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hTg99wPBQskNTCdcfg0vXWyYY+qEuMcCknnWYw/9OVM=;
	b=QHGN8O3Q1YeUoHOb0KSruUSE9mJsPZzTvPSzo8EdLDvi5DZbof2q0OX/w2G9iivJ
	hY1lJrp3eOYNTlpojknghiaGxixeqPFSY1KEFxRyo4r5DY5N3YPxcXfpzdWil36WXwf
	q8ZKTbWb18b+PYBNdExD5qk+c5bVmancjIiQd2vQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181624f64a1-ac845d0c-a323-44c5-b2fe-f62a73baa4cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f479c1ec0b1df28bd91771744b9d4b468fcfec701dabeb92c2d609d6478e9327
Date: Tue, 14 Jun 2022 13:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655211779
