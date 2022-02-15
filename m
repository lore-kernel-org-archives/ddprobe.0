Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B27D1578
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 16:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644941485;
	h=To:Subject:From:Message-Id:Date;
	bh=jt7dXs6xNJwEI6GPszGuSZuZWOPWhfBsXrfFy/I24Xk=;
	b=FO6WLgMJj40Uq2iBz+mIWGmNPuTLMWyRg170krJbpdXg1AqSu54X73ePx6GSRkW3
	Yk/xwUQ7IeKdxEj3PF4wCAIZobHreFr4N0AZQvFqWqongnyOHsK6fpeFrcWz55m1L7H
	bdUuxbMqaiVySqPEWFPHq4uKWVc8zLXHEVO3wW2c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644941485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jt7dXs6xNJwEI6GPszGuSZuZWOPWhfBsXrfFy/I24Xk=;
	b=MHPod3LL3q9+G5VT9/D9UzBC8HGOEzbnMIJrFZuU4n5/QVdNJseZ6BFc+mKOFSwY
	MAzInvUBN38HdSZ+bokWBdwhBAUwXCxlaierF4GVauyUJEgzTAIcIq1asLeLWeTEONN
	pu56XMgN+/7LkoJZuRUlgY8Jkim7VHCwPBPvgmOc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efe272336-7de98cf6-d593-4249-8e1f-8c55db656b53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fcaf88c14c152b2183204b5882e61d7d432a12e7ad7564a66b42b0d295cc9a8e
Date: Tue, 15 Feb 2022 16:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644941484
