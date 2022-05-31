Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140313205
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 13:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654003679;
	h=To:Subject:From:Message-Id:Date;
	bh=yvtr3YTraw7N+DZYQM9+4OKGNokrfirbuVx20aGk5ro=;
	b=dwWgtHXXVK3fxu1kaymX8/yrtPgDhxdjl/b1alDI7+YtLO+3qjgYQ0wZWo6gywHF
	ThrlR/elH7ZNAsjoMwwvzARn3JImw6uYm35Q8f0o+jaZQIUW65HM7dVowSLepuNFOfU
	ATH+ifFgdZGDEKkBor/nnLQ8Lx+m9KJwAivj+ZRQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654003679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yvtr3YTraw7N+DZYQM9+4OKGNokrfirbuVx20aGk5ro=;
	b=crv7ASiYuFq3Odds635ewudXyKszbHT2L/2/SeTNn2dBDWs/N1noTz+S6nDr7Lrn
	1xITRPoUfJccMIGnu7ME8ucLDQcWWS93gy1OdM6rgk7XMyv0AJm7l3WPApjKQqtwTdh
	W5jYve6C1NdR68AGc8t/W8AcOgUwyMaFHHCciPcQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811a4d4067-827d6b16-bc6e-449f-95ca-b4dcdff5eb83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb6389665d5362db68a1a76526a340539ca04f0dc06e29bd05af07b9c0760850
Date: Tue, 31 May 2022 13:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654003679
