Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721EA5C88
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 22:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658528812;
	h=To:Subject:From:Message-Id:Date;
	bh=z7EAtENGPeej3XpKicq5wfJQstNQrTb/tmBwdhBpJoA=;
	b=af5Zo82XbUXW8zldy6/Cgl7Fkpl0MuIn0uZVbg9qYdUFhG8m9qFRFV1Buo1fWr3L
	E3dx1EXh+dvBWVO9TleEZ5yYCoAYMaI0VCdZhVRL6U1RIjeUC46KHEJ/3nUutJNEgwn
	nHoMk8pS5ssY2B/pdktOaGiwuq6Qrq9awrx+cnGA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658528812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z7EAtENGPeej3XpKicq5wfJQstNQrTb/tmBwdhBpJoA=;
	b=BbXoDG/AyjrmUub+Htvb4pz15gjKedgJKmEDjYaIOmD656GNGR5YlffdTcwsNUI1
	6C265RkZK9bMEHBlq4yNFT1e1xT6jiPI8g6xG2M66G5VoCXTf5tjfn2lDAXsNcNcmSF
	vrYP93yBjcYoM1Rg6ZVsJ5PJJw3YJEerJqggOTew=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018228054d1a-1a54726b-3d4a-4bd6-8e95-b41d1f401e6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97a41319fb4e7ebd23dc15bfc8dd5a4758fb56d6f3b0a311d74cfe9dee9fb27e
Date: Fri, 22 Jul 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658528812
