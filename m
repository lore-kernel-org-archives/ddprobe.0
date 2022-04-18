Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055C2801
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 11:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650280558;
	h=To:Subject:From:Message-Id:Date;
	bh=099IxK4tLIfWMqHm69ALnjfJxGMKOz3yyj/rzzLGyhU=;
	b=AW59u4sNJ1K24MYHaGpcI64N/nlwT0r1bxqRikKyJc9kj1BGmtU2Mutn7Hv9lsUQ
	HTKM4aN4GkaEjCEE8GkqLTY+w/iZa0Ev8DvdSnXZkvIya+bBsXUiZSL0n6eqmtkRY+I
	CPl5iiQzmNQ9w12gBXbsHlEkq6NlAxolI0NN6IVE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650280558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=099IxK4tLIfWMqHm69ALnjfJxGMKOz3yyj/rzzLGyhU=;
	b=OTeILTfsoP01soaEhcPSYQDnkXYhtbzZmQeogTk8JIGCQF7E9mZYuD/UlKUAyhtZ
	3GPzlnjVktveD1B8oPnwEngC7n4FaEIMzav+mw8yS6U9Hs6ObIk91dxgCNvZ6PqN3Ec
	XtwZwk/Hw9KZR+eb4XD59o9dcTkK5cHenIhhY0zo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803c62eeb4-cf991072-e641-4ad2-a7d6-4ca9c23e2750-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74f676e3b2213a64dc6b2782c5382cbd74b340de68789c58e6df828d7122de44
Date: Mon, 18 Apr 2022 11:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650280558
