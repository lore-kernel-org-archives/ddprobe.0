Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0AC33C3
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 20:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651870798;
	h=To:Subject:From:Message-Id:Date;
	bh=6ZNl9yRGjMCcb8QOJ26PP9AamZ91pKNVLwX9Iz3CZOk=;
	b=BJizolUOushi7ZzWqGuuqFbKUkM94C/GY20Te/5KNBZu/PMKtjF9MpXCtTNUdBjS
	+W/ngEAMBpbiyAqwn4QTpgBnsmjqt8bi3y9lVEkbJ00PSkWPDuJbc5dbhhWV7/El4bk
	n34LjO2SRYTMoptiQIvTYu+tGhYtO06LSRkUgxLo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651870798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6ZNl9yRGjMCcb8QOJ26PP9AamZ91pKNVLwX9Iz3CZOk=;
	b=A1LOAIiHOw4H3GhuB1KGElZyIwZPuoypHkW+oiMxdfuRlQdgVQ11yUysO/uZ6FSr
	K7+hB4T833Ef/a+Q39587Y+V+LY2Ya2kDGztCr/4gUrYgncUZ5lTpfNlbQqw326hm7Q
	ML4T58DNpYtz6LYMYKRprjxD3lg0jrB6MVhn8EeU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809b2c11b8-0a767dd0-75e7-4b49-b1e9-94deb1c8b1ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47773748b8d171c460ad50181a39074d60a494a645d89d73df321c1cf59383ae
Date: Fri, 6 May 2022 20:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651870798
