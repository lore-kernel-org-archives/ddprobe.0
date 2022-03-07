Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191DB28FB
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 02:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646619085;
	h=To:Subject:From:Message-Id:Date;
	bh=Rumdf4MuidzKLOl3xNMzAx8dgCmlEz4yQW0LHnBc2Sw=;
	b=ETY3myFhGwtZxhSWtDpV7aU6GrR44jjf20BnlQYXEZIc9BufdeAOPXYkban7Fgyu
	b4dCL7VGyIf/nEcnysrtEoJHpuu3NnNUzJIR9yDm89wne8BQ0snBJi91G3jnIolHsnx
	MixAF9CVAzsnBoZx1tK/fw1S7cTVeplEE38jF8vw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646619085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rumdf4MuidzKLOl3xNMzAx8dgCmlEz4yQW0LHnBc2Sw=;
	b=d9we/JirJ0SC/BxhezrmxqXW7S7ywEWZm2P5MVJkJJ7Kw6N2ofddXaPaua8gRXpu
	twVrQq5yKDF8wn5yzXQjIxtg6bxkQgXttTniRsSEx0qEZbo8NbBSt/nHWFHrtBOmW94
	7JtBOQ10LteYzNNub9Z3l8E/I1WLPnPCG/fWlPgE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f622547f1-46afd575-4bc0-4380-96e1-8fe40b9a0ebf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fdc64febc39f5b44b04bca90f6ba4f8b4f31d9ae629ccd647e0ab286aa88d80
Date: Mon, 7 Mar 2022 02:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646619084
