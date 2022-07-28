Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3498A10E8
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658979652;
	h=To:Subject:From:Message-Id:Date;
	bh=NC5LvSfcfzEnTzp0w8zhb91tMeqaExgE7yX1BbywpQw=;
	b=BZGuEZjQaTYEqLoQvkyx4gfXJ+Il5r6xXTSJS5+bwK6R9onjS7NLljFDFkjpT613
	TlOOkgtTnpboWNSCzZEHHid3AXcnm8HGGLrlUx/mcE+x+LWZ8vdpHSqNpdO232N0GCY
	cFLFSiJm4OWl+4xthmDWARAhe3FzSUL2tcgMS4z0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658979652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NC5LvSfcfzEnTzp0w8zhb91tMeqaExgE7yX1BbywpQw=;
	b=e86vvyUmlOlnUL6BhQyrOh8tRvNUnhynMBKBvg06fnE2izXGOFrP7LicsvC2dWZH
	bW44B7Nfdj8+260MUHnFvTZ4WkQK6ggV1GxfFzogQoSNkjAkflcMJiq4jU7e0KqRn+G
	y6kS843R7JPhTtvh8RRTEevbdJ9KvrPX0nAXv/LI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018242e493bd-69d38c41-2750-4517-960b-ddc77a729f21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d234f71d0917850c0c777c77ffd6d8f0841eb9e36fa4456864dcb31c248236c
Date: Thu, 28 Jul 2022 03:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658979652
