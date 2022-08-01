Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCBE7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659324652;
	h=To:Subject:From:Message-Id:Date;
	bh=HEM/vxhUrubqJM81jIAFtWRE/cWCBhT95buGP9MosQ0=;
	b=ZP6VXR5aKLdP/jwPG/9/MzdYAxsC5heAjZ/AX+wfVf7OKkKcphHRfTvakpGZqxsW
	LFUkJXbWNbBKkB2D+NqacdTQNc8fIzQ4g5GFV8xVIawWeBalkXh4qU9QKEQ4eb8cFjB
	iZcQcPodEm70vP4/nXN9G4zRpsuzwVANThvdrGsQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659324652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HEM/vxhUrubqJM81jIAFtWRE/cWCBhT95buGP9MosQ0=;
	b=NOh2GtlekgcwdV/T1KD9jz/XXCIdzdeGLRYSbFDiGhJAy1onXIKWtF/aSoNBRlYb
	+EwsvL0RFKfDhujPpPGn/NxGnXLe5qATSFkAQ83kAX4cHDZFJ7eHlyQ8SX3V08VGR04
	A26TLcWQu+LN7Di69SB0r6lWI4e05Dl9r8qe0xdA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825774dbe9-d602001e-1888-4621-9452-fb6e12991347-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b9cd42a7e33f6cbba7aaededfb1b1b74176c6b64fc262dfa770676a91ad6f06
Date: Mon, 1 Aug 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659324652
