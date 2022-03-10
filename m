Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC77A18D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 18:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646936785;
	h=To:Subject:From:Message-Id:Date;
	bh=HB9tZFw3fDDnBXmjzpJuUShlbgR9UhJR7O+5he/J3W4=;
	b=QwCAZfsb/DiXwhlzUtduBuxNjQd+7t1XQV/iG29d6U+fQJSfv/V6wQiiyCAI74nn
	/oHHJHzk73gKW8Moxt/bskjt4EeGGh9+CVGuOWd4v81RNiKnARvYHw+/9/PoqI3GFJw
	XdPMrHSgKp9o8vxoBtm752hjc3BKi5SSItGg3Wjo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646936785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HB9tZFw3fDDnBXmjzpJuUShlbgR9UhJR7O+5he/J3W4=;
	b=a+9M1ysAgDmvOAl6i72hx7ixxUjFSxTpMW07qMxh2UfNJLNVBytaCrEuIkhDfVam
	1+ilOU2OGgUNO+Z1SF/qfodxZHnjmfz34V8PQWNURIarKxbwkChxakneiUCgFjQPFHG
	eImMBsNtBccm72NxD5RMoEtWAqM84+Kga3cmnAi0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7514ffa7-07db0686-1ff0-4bc7-b281-d380029b51a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa9ce31746cf8fdf2fc01627bc7a6dc0a0a670454999200272dccc3b3a68c343
Date: Thu, 10 Mar 2022 18:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646936784
