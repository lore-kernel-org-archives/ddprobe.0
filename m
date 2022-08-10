Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68DCF17D0
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660126252;
	h=To:Subject:From:Message-Id:Date;
	bh=VPEHYtpww+uBQ+AwPZjGuCVOXET4iDN7nswHZe4LIuk=;
	b=hkQ9vV66EwwzLOmvosEOuwzwigwHV1QGQDwDdh4ZIBmndbXPMtnslV8EQw90JGS+
	XanaJts5UcKfczNyaEfrAAqiDnF/IzcoX+VB6k00wTb2Y+gkQX55bv3Z4MmFNeGeAEU
	ASnDmBPKpju5yXMcHxwSLHj3fXdUfllzJOFxqTZY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660126252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VPEHYtpww+uBQ+AwPZjGuCVOXET4iDN7nswHZe4LIuk=;
	b=T2X7OIUW2+27XXAxzCWBGn2ZoHiWKGV0dW1AJtilH64T2swlXjEzWN3RJp3rOudx
	sXiItE68Uk37oGdxzWRGMQqE3qp8AuZZGDZokr8L7BA7OxUqgn9J0nZXqYHiwwCr/1u
	MujkP0TcZEHKGl1bC1L4/G6Yf5G2pQBft064TQpA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182873c4e34-3268f1b9-8bfe-41a4-a755-c3a2afe88684-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36583c1ea8a8d07d30c40f457ada74672f58109fb53da7e06366636b17147046
Date: Wed, 10 Aug 2022 10:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660126252
