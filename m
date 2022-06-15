Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5357A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 14:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655302559;
	h=To:Subject:From:Message-Id:Date;
	bh=78GOnBWYddFrhtL8gcj7U24YEAomy3Sq2BYWgB0tcC4=;
	b=dwyYv3bpF3TE6VrSEa3X0mU+cuWuF1AGTlczHhRnHeExqdfOGeYyvaJzJVOJ2G+T
	NktYcBEVp4Rkzu5Eubeuy9Bc5TxC2Fs2CUuy3xW5aINrB5ha2D9tMi+GsxHr4E3plb0
	9HD5M/fLx8IxqwPIAGWni7PKcGG5WUdJGN5kL8+w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655302559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=78GOnBWYddFrhtL8gcj7U24YEAomy3Sq2BYWgB0tcC4=;
	b=h6LyDE7GsGrc4fh4iIhWR4IXXh3Jtfrht0E53tdVg0XlmSLZ5MfxOo2Qhy5Tvpd6
	2Fhm6BIJZgBKcWi5sXVZXmDSS+1G6kMVaFFd43Z+6bwPuU2Dpl00N6z1fJiigiTSkXr
	9nKighZiRQweCh9luqqQqzbdwRsSk8g9c5rwfA0I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018167b89655-0ab178ea-fbfc-4a5d-8d0b-d7b5a57ec47d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa493ffed48764d2cb6ed28f9d20d0820aa86086a679a289e4756b9cd3da1e6d
Date: Wed, 15 Jun 2022 14:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655302559
