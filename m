Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5328A7A
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 19:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646593884;
	h=To:Subject:From:Message-Id:Date;
	bh=03JO/eIw7956Tm8Jf1OLNKGETtxy+vQbr5mxrk3xrWA=;
	b=Gm35erpg+c8Xrk+UIBWR38IO96OnjSfFbpyKf8XgTvQtavJXG4b/LVoYWF6XcZmt
	3PLhPP99sGopF8jFrzgU5k12LAcWaEwWZ5WyCo3ouBJZ+bIx3g0qN7bMMb4joquK5WU
	T9efz07xcHFHAgleGtHQEN5yuEZ9+VPHkqzsPLFk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646593884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=03JO/eIw7956Tm8Jf1OLNKGETtxy+vQbr5mxrk3xrWA=;
	b=cSXNT143hKk9+G/G68u/lq+L9/TJAO6RgjxiObHGzwtao5HYf0OXmWOg5RPzYIvP
	tosqx66MVrUY2WlzAfY74DL1bC7mbLQSrQKC1JDMMXInNzWXMX0iw2qdOWWk4TtHYMJ
	L3cf6Yf8frTEnWmzZlmWQOCzRDUojb3lHtqGzJrg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f60a4c248-d49b7817-8e8f-467d-ae83-e9ff4ed13e14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79af8e67ab5aeb8e5fa4b6ec1c9395e90936f6952019476712ac85d58efdf66d
Date: Sun, 6 Mar 2022 19:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646593884
