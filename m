Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A628328FB
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 18:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645815385;
	h=To:Subject:From:Message-Id:Date;
	bh=wEhzipFEWRqpt1xg7NqCXPFnHXG7BfR++FV8hJwMUFE=;
	b=ag1z3nucEMvC1ifpVeiszEOj3PsX2fY4yerqMlPS0FBxGg27IOn6qtguvi+pbMp6
	hGB5hSIKYtC2GGZqlzQbsH+8f6D3I0Qjb4BlDeUq034nkMEKpPj5VE6V0+uGiwdP2m+
	gnx7zxPldHIjeiGEb4NLC+A4Zs1aEJ7j3qtBdDs8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645815385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wEhzipFEWRqpt1xg7NqCXPFnHXG7BfR++FV8hJwMUFE=;
	b=IdhosabNWtZiZt26Jwqr6I5qL1r9AkWRHbkKEsug1W0WrCjk4YKkDCIwA+JlvIkY
	DKLQYWseNuVlBgOZg0HviiKbvsw3dBWr/o2N5CvnwxWBwhEpeC7riD22Wx68WVn9VgI
	550g9KITvmrW716cjXYWxw+vujmzhuBeKqSS+QmM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f323dcab2-968975ec-df51-44f9-bd87-ea10eea08146-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 590222703a1c2fddb252a237ac18e79447d3da1d356c38ca2f822f9ac2b882fd
Date: Fri, 25 Feb 2022 18:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645815384
