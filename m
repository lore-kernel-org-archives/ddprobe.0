Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BC6215C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646076984;
	h=To:Subject:From:Message-Id:Date;
	bh=2wPhmN1Y8fmdi6gnqlGa83AYwjo3zMK8LUbp26GDyY8=;
	b=bWafZIH5wMAyAqZP6SuYBMPo/RuPywfklFW4944Qp2tqDwhDwc9mhLQkv0SZhBB5
	ZyMvnTRw/dkoEgzIkzK+lLfWpT1a+5ZiJSvT9DJ3dDH6sFmmdRsDe43aFinLX+4TLHA
	A6LXGjPBg6acccJ9e+or0JEezAKtNIYTEy88YXgQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646076984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2wPhmN1Y8fmdi6gnqlGa83AYwjo3zMK8LUbp26GDyY8=;
	b=e+tGQ6xueO7mSQy+/nWA7e4zqRpKDA8qzkmknc169bKaSTt6cw0ZSrL+biXDQA4I
	jt0ZucWKax9G4UvhRKx5ytjkohLK5bprwQRSYECAGk6WfWUSsvIy3CHLW5eSKCMXRVq
	oEVJ24XBPv5O0/O3zFbAWjLFGGYi7Cn0frTcmjVI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f41d57da0-8ec49530-b612-44e8-b9ee-b04bf35bc2a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddb7219e587dff72beb19d4eba108d8cf2c12c7f75ed84f62f8f32aaaa1de7ed
Date: Mon, 28 Feb 2022 19:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646076984
