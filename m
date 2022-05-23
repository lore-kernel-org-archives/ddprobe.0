Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3FEE20E4
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 13:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653314219;
	h=To:Subject:From:Message-Id:Date;
	bh=vDc38dHxYXX+liN8CuVOEFF0gXOPAfFvqoJHq29sbfM=;
	b=TQRm67cc6u04NpnIdFqBhKOdf70hOFzYkrTAAE2mnHo1AQtFvCI0WkWUUVnkCa6j
	8FImypJK7OwCLF1rdiYlZj0n6MSlnOEE24yH1Z8DwG4S+v0crpd0QhTdIM1T6Uo8dcR
	mslLb/afHSeNiPZ9Pgch/jiNGqVmLeKLo5YMJYiY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653314219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vDc38dHxYXX+liN8CuVOEFF0gXOPAfFvqoJHq29sbfM=;
	b=WR3Tm1GcNEq4Htv/Xou4WYJSpMnuAvXWHUusF9+KQr4MapGP6tmN3xWGWiz6P9XX
	wCVd1rZILdeDcWRpqUdvB7Ox7SVW446Pgn3k2+LynmlpnAvoVLr1LdRU2/Onqlxo9Ih
	vAvXTVBEQGcfmxuhDxjypIinjZkncmW59yTxPX4A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f134ecf4-9ce6a34c-49cc-402d-8467-39c429ea8000-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7bbd52aa23e83676fc3ed60ab1feec8da53182aa554fd9ef046614fdea081c9a
Date: Mon, 23 May 2022 13:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653314219
