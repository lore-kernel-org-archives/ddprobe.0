Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423E1322E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 16:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648310758;
	h=To:Subject:From:Message-Id:Date;
	bh=vTxS65mCb443dxr7egFIPUe7e9WcK4MvadvjsZ5+Zxg=;
	b=XFZqno5EEy8ozYjvjef8xuQUWZbS+kXkK3df/Ino4EW0tyrbBPpglOKRy8gNGIxf
	d7W+vjQfkHilaS/2MRawH31mWW2EZ6T/cvMfN+UL2EnEyqzuM7D2aoGgUjckr/ZWS5p
	4cOLuJzn5SPY7sGDbYiZ4EKhGpJAwmSioCbKGFk4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648310758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vTxS65mCb443dxr7egFIPUe7e9WcK4MvadvjsZ5+Zxg=;
	b=C+pHhGrbHb8iAm7FU5SCk4Grhx2t773K8pgr14QgiGXuU5cFEQoi7Yy+T0FXqEwt
	t5BxqwqC6Yyad3I0xQxIe/3KF/hfroahJmYYPSRSZRcAvIVDlkITQuFvPpfb5g6UFY1
	1/OpDkY1A2A4E5IBY/h1qLaBWz8Kv8MSMSyukYZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc6fa2b6b-0e11eac4-c0e8-483e-8f12-399b8dd55733-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1685a7d29c65b3e1ca31dc44d3b3a74b379909163b31c89cc6d5040caab0ec9
Date: Sat, 26 Mar 2022 16:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648310758
