Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DAFFA21
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 16:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653408419;
	h=To:Subject:From:Message-Id:Date;
	bh=XIL0VwHEwSPvqUwW1NUF+xU3r9mU4cs7stQSVHoWozo=;
	b=NMtlh9JhW8t4qbZidn/hSD+BIhduAF/l11o/L7Pa/ae3/6oOLM4HVhYTtzXWpjsE
	D5hNcd8MLj9PBFlOQKHhZWtycjLCs8zqqv76SeHSwuV1UvVg8AzUprXWy9WI1EpnxJN
	Ln7Rb6SeFFpNQ+GeerJ+pxT+63Q151TTlghTzd14=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653408419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XIL0VwHEwSPvqUwW1NUF+xU3r9mU4cs7stQSVHoWozo=;
	b=HCnMCk2/gyRQpdA1535jI/Er3JyybHZh7yUjpnR2OpMvt4GNrIn+H3hO7KB8mjtH
	zX7YUZPoEoP7Nbsmdg64egKgL/IvMUmcIbZBz+bmci0mgohY2fgce2xGxc3Nc+tPLhP
	0PonmK2p+PtQ0jy3yPuTO2caAxM/WHmlPoIMWwiY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f6d24dc4-bb1ec2e4-b65e-4f85-b55d-2165c36a9fab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6cf66442250fee5d8d9d5c6713bc0a9fd7b368573e66e93b4a012c0d8221bc9
Date: Tue, 24 May 2022 16:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653408419
