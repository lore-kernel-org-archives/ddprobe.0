Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 820947A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 00:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647736284;
	h=To:Subject:From:Message-Id:Date;
	bh=uCHKyeVsPJC7753c5cvZcEOyZ+6naW4MIFTwbjnt6N8=;
	b=kCwqB3ffIUAOUOxKiCCHj9mLHqUrAcszWtYerPV/f7bscssedjDe6o0qmb8zEsSL
	xxdlb2cRMMaEH7vxEmg9qgmaDIk+aGmwhEE73CTlw57nhGpHS0Dk2pPoLzGimvDSOtG
	OjCyzc/fyZ+GWdmu5wdH3uN/TI0SWyU1oLcYD8/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647736284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uCHKyeVsPJC7753c5cvZcEOyZ+6naW4MIFTwbjnt6N8=;
	b=cMyFmIq/sYAwI2YCm5LjrXA0j11BVqPsQFnjW+rb23g1CXEsnD86j7HJ9nkQ11Wa
	aAkXycjZHzcjRzIUF9b6Nv0LItxyUrAwAqHXvVupJdqH/MXjnsYFNvPoWIUvD1HW8Zl
	lNpL/RZXlfAyqLJfGiVIAoUallqMboK35+dRVG28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa4bc664e-3a909d5e-589e-4a16-9cb0-e4c298d62a00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3b0dd45e412899cfb70982c964f71460149770849c5b4643b91458b3bafdc29
Date: Sun, 20 Mar 2022 00:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647736284
