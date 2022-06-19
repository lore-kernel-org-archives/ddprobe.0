Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB4EF7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 06:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655619899;
	h=To:Subject:From:Message-Id:Date;
	bh=7jbk4l8L8zGYlzu6unklFDd9t3bFVQTm6H8M2siAVxM=;
	b=XVMqMcGYGrFBJ0nAaZ7SsimNBAp+XREhHQs14K2heLbwEzrtPwNlz5Jz7PrA/z61
	fBjaCU46VZlknXtWNLIfm/DNaQkMLTUjgUik1LInNXRvjxaR5d2aUSUX8fbJnrrI4Qi
	s3acQlgrG+ghmh0JAwRE9f617cfl3ZyrzU6AnvD8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655619899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7jbk4l8L8zGYlzu6unklFDd9t3bFVQTm6H8M2siAVxM=;
	b=FtUiciPxpAA7wOlNdL+tb1eNN4v87ecMxhom8Odk0vA9F0mz11YCCx8MJ+aRBsFS
	58PZDMFPyO0gV4KvlcFJQyqbPt/18avsKPtBu8WkqKrLdD5PadkX9gT2OqLb5nTQ3EB
	vdQNib/aIibCgkc8DXTI2zpeEnC/V/zJpDeBw2sY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817aa2cf61-4d80b745-95c6-4b74-bb7f-9febf68c7e1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5bce826fd7636f3d78e643b1ad304181fca88367862a1069932e663a19a101f
Date: Sun, 19 Jun 2022 06:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655619898
