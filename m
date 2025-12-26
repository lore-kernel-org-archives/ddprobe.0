Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B841B4F0A
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766717034; cv=none; b=hkEBP3LUrvU4iNbVKsxLa4wap7ZoWc8SykPlQu5mGI0wyysbv6cnBpqEAtoxY3L7kbH16vlVUKvlM/KsiHZd2X26Nn2G/YLTrGRqxJCZotpGTN+5T1Zp5odntg1t1ee8FjVn0ffILsULKi58eBZcCBuX6aAMTFDw3Shug9QTgNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766717034; c=relaxed/simple;
	bh=aeZAfBKWIvjUFE1a0wGQfo/9JZ0mpy3PkktWV9z2hRw=;
	h=To:Subject:From:Message-Id:Date; b=abQRTjVN5OCXmOztAPsJjpQJqlJazdUsCUrIgmrtbQ9NrF/uQVQBQXwc+MCSkNjncYiXFrrm6rPx1WTMvjMsdZj/i9N4wN+osnWPzkX3rvOJatx1RPieb0pFHX1aCaUZ+ujhQIFw5F7VDVi1UKfsNKPmJyFP5DUGURnNhx/AWkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C66YgClT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C66YgClT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11F8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766717033;
	bh=aeZAfBKWIvjUFE1a0wGQfo/9JZ0mpy3PkktWV9z2hRw=;
	h=To:Subject:From:Date:From;
	b=C66YgClTkRwkK3jkqV9SV5fNKWHZB0iiUh6CqJkcUMZekcaNrdLwX7liuRevpaoet
	 UHzHDsvWbOE9cVAtO0IIKN63nAyy4qUwKBWgiGUD2G6ZLGmXdtN85KDPDKOi+SEFCc
	 nN3BLjKgI9XihrYIcI2V/lwFtMeNCRXsqjrRs90OzcOnDuJnEURNGxKcdIxP3rNYlk
	 4tqRKwEwvZPKL+MBitDItTdEd8I7S6vNpGSKiKuF1yYDuiCvL8dTxXCR94sIU31vHE
	 RY/a2muaiLPrHXBS66746ZjNgLwiOAaahTh7pOj+BsnS9eplWizYhma3bgce1+anBZ
	 4IrZ4Rhwbe+yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9959EE7AD7A
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176671703360.10819.383312730386893297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7861d6f5dc7788ecc11e75ea1729bdc12de9e048f119390860cd5c7346083854
Date: Fri, 26 Dec 2025 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766717033
