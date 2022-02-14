Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A7A7D
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 22:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644878185;
	h=To:Subject:From:Message-Id:Date;
	bh=MKRZ3PEZW4Z3F0wOactJ+W8zSAvAhdJ8D550f1GHg9c=;
	b=DnYkhPkKpTIkbggFklJPcdpP9XOtLmkeQx+vB69tYZ9pDmL9NOFwPCZJgtWG1p7e
	8P9PToi2/VLn3S8ETGlxm2nTgHe00bSqI4DBcGVe7SVAKi5eq9Zwj3mfHdOWQFtNh94
	Ylp4tT2EKtEzBwwBGjzjo7lm+teUtfXUPOJt4qDI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644878185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MKRZ3PEZW4Z3F0wOactJ+W8zSAvAhdJ8D550f1GHg9c=;
	b=Qy4xWiNi/iGG6Mik9A8on5ZjDOZuSWrIcMtav98q00/PD8vg5FO+BhcZUcILmWI9
	bufntl0oL7eL56BI0NN+8Ylx6/MhuujogUWVBmijczQeCFkyvNp/06sPKZyYWdgxGUw
	uOaOQAq2GwUvuXxywwCFdFqskaFDWsJBiyJbvW2s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efa614145-4c8c2668-a03f-4f8e-b9ed-1682f58ae9e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8112dd8a5cf0ba6da028c49c5e1b49fcf1b1713a83d757a245c1cc872efce67b
Date: Mon, 14 Feb 2022 22:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644878184
