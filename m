Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F937E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 05:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656912412;
	h=To:Subject:From:Message-Id:Date;
	bh=Q45m9XOVTEMbEVyrViY+6zTZVNB2dvdxg/f7nxCfQIs=;
	b=b3FD/jrxfRL0Hrtl9ZMLNh4ldU91LFpudCVzqmUbXfeqHQF5UkZA3DxFu7jJyxol
	2v5QhuX40Rg4uQ6QnvIQ2BEL84r85LkhVTwpqe6WzCgO9OuYTQ2zrlcjR2IG9GV/pQ9
	mPVu7GAKY5GePg1f7OjLVevK9JMrdiIVU3nIDObA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656912412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q45m9XOVTEMbEVyrViY+6zTZVNB2dvdxg/f7nxCfQIs=;
	b=YQG4yyoJ3MUFCQI6HsXnYgfDrFEjIqxYEd+uyaIlvwdV/A8noleS7Kq8O2yHXu7Y
	NrE2DHO+Hgi7nYevjAZ3Wo0g4BUi45SV0kUgGk7oiOT6wwav76mwvg5eCZ685aU6aMj
	XifSnbgQMedlrumTXJKw9KrDQYi/vpdlJfM3mJaA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c7acfe74-e0100696-d026-4b2a-ab2c-84edd41cbc7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03c9f7c0fe0b50de3805e814f262f23617e646bc9493bc91f1b3d096ff726cac
Date: Mon, 4 Jul 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656912412
