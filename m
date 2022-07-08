Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0098728E2
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 15:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657295812;
	h=To:Subject:From:Message-Id:Date;
	bh=YdGCNFTKufKOeVXfYOvh80fLyrjhczNr6uaxu9wLyV0=;
	b=EQTKX7nF7w+B1XL04Ja3XYG0Q+qOzfke51cBbWPmuFBCu7bQvztBB8rPKJusnMx7
	st4e+6vCR0qDnDn3feyK7JUF+B7HX5PS+0nZ+wMyZgxG2yPOv+1+zQwzROLOmSo2TJn
	lh6Ue74Zx/7sXEManFnpMKMzG94vh5lCi17DHHzY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657295812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YdGCNFTKufKOeVXfYOvh80fLyrjhczNr6uaxu9wLyV0=;
	b=igPcbgLQ+vdrmdPBOU+gd8L/Wm7GUYbTX37pUSEJstH9sTooTUrC7964Cr4gtWEr
	hXQw3W8vE/1xJT2qWdobDP40PUAhOjC69ZirLvmiqZZJWd+pJSn17JIxczFNumGagVB
	pgOaYzI81b+yvl6u07L/r9yQYlimFc9U0fk1i+KA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181de8736d4-8668da3f-2008-43df-81b7-14c0d56597e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9a0229c4aadaa572389b0c991513c4fcf826f417561ca2791be856360689b73
Date: Fri, 8 Jul 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657295812
