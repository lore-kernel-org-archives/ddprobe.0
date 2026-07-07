Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0D333D503
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 03:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783394914; cv=none; b=moQWAYzGELTlq8fH1qc2WC6b9x4ZI6W5/3xweVL+CRtG/Q61apJUpZxzRtcezt9Ky74TDBOL+LV91JDpeDEvaIxY3JboLIoLQpYp0gXJoBWW0MBXIQxjus2WE5NTuqruj9pp6obu8gDS9txZX4iMrELmsl/r9Y7ryerrZdt+y18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783394914; c=relaxed/simple;
	bh=VEL0mOhRI/AsgFpw7DhyRpLjVzpWl2+VsgIPZjxPvIc=;
	h=To:Subject:From:Message-Id:Date; b=FVnCxNyxXP1zE8Vt+l6SuU/mM4C5nWHuZEmZZQaoCEAv4wNJC1WKBHlJ7DVSi6rEJbugkeAlj+1V8i8d4g3Ry9Kgyv8UkIYn11AjEU0LdQ3SSvpcSJGuYCqFw49jSiV3Y9H+Ykh1w7iHMZXKEe3UYTYOqBrxLtpTu+ye4kRNQ2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwZZ3nMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwZZ3nMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6C0C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783394913;
	bh=VEL0mOhRI/AsgFpw7DhyRpLjVzpWl2+VsgIPZjxPvIc=;
	h=To:Subject:From:Date:From;
	b=rwZZ3nMihNIhGSFTVxluEXb9Swvu2WI1HmqERcjUOWZrvkoNHQxPiAk0B/YA1pGyx
	 7wx7vbKU9IMaEdjkaXxJwyRnlGI6GeEQ0eZn5UkBDFUBsQXTioSTs1TiGcnDogeZHq
	 dteUxOn6omhDqt1+pxfXP55eDLosC7UZz360zdvHelEG/b4u8W0Y3Z7NsgmjXSs7Cj
	 JPPFmW+t77/iGYXomhESLZHN8dCBOqeP7PHNqR/uHv4mp6AWrCr6UsjZei0xpyreZJ
	 gf5bLQvRkOSojUm/1e63Z5yW3y1duRdLE3mwCIzx7yAGKX95L2Qx3wbemo5urY5Mu5
	 2cZ+VvByCmvNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC30AC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178339491369.17231.7378843313622438777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8dea0942cf5668858284469ff13edf291aae2634ef061520e5691ddabeab743
Date: Tue, 07 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783394913
