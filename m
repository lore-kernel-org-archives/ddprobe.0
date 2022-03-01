Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697A47A
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 02:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646101284;
	h=To:Subject:From:Message-Id:Date;
	bh=dQESsmgn4d478Aljd60au0TSmTvzBJI4aWm27SsVLiQ=;
	b=fAze3a3xrqS+ekB9iswwm5RtJ+wowLRzIbf61p4sHyT5s64tsbGcZL9bdrbk66BR
	JK5CVb7P4sGuc4TK5QJIbDGS33l9epV8hFbQDCIwivDUrZDdviLOAKGc6t/V56czQlo
	TwHTbHp3aukPkUfAI6yR7WLQPz9LytU2vhpBgcY4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646101284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dQESsmgn4d478Aljd60au0TSmTvzBJI4aWm27SsVLiQ=;
	b=dK9o5EGyEnygTZMVfk6LTQvxFEpXMgsdCwRxQSQIcJBB+KrIxec1gtLIfMQ1OLiq
	fNA8I1ncAVz/C4xKGgDVHnVpXUmS2JKcKwNYGEbv9CzvqIz+FwXJK9E4cS1/dbgyzVE
	fmH9YnLyVjw+fO/Ek6WhR/XjjAA3h2ChbU6tPvbQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f43484772-b6a9928b-10fa-47e9-a408-ac7504dd17ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b089cea6fd725b428526028490c14c7440fb23ae4a1a3a39297ea8d007276b84
Date: Tue, 1 Mar 2022 02:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646101284
