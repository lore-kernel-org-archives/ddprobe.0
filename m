Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16A22135D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769546034; cv=none; b=eY05VBHmGv8KPd7U/O9cXntdbHXgCxv78tLuQ2xH9w9AgbN6rWV3TONb/VCs7oa0s7rCT3kBcCuWgLQgYLawq9z/A4/Wv2AAfoAgfBAbY2q6os7k8xEWnTgIEfYvtk9U7N2lIAeRnuCl2jRGqjtGSfo6l6s6ZXnv6QI+/xHuu00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769546034; c=relaxed/simple;
	bh=Otz462yo0MSi8iLy4ZQzoP/i3rZiK+mrJaJUQTqGAJo=;
	h=To:Subject:From:Message-Id:Date; b=Ne7rnx+Ffn/unpynslIwVHNV+kTA8ymVPLQ33/4fhQyO4D1H6YItUewGD6ZsTvUr0gqnDJ+O2vHSliKyDKQf/JnqvOIKpM5OF625UUsMQMBfVC4XKv9eQhAxup0sIqrpbduoYeXfY4LTRf/ytQzpWEKphECJwzb6FUi0eFlUS0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=agfkOOcf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agfkOOcf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12F9C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769546033;
	bh=Otz462yo0MSi8iLy4ZQzoP/i3rZiK+mrJaJUQTqGAJo=;
	h=To:Subject:From:Date:From;
	b=agfkOOcfTu5NQwO9Q6vleLo34x3+z7giEqhiXBq9761OjL4JSsO+Qy6wk65kcHJx+
	 +1OB1TApv+Tw3NqLX7otT/DXlHBwEr7qtpXVyURc1dHqGh0kgyjTIm/ySLG/QLxed7
	 WzII06ONGc4Nz8FuF4vJ4HJ/n437mYW9ch/Be27Ya9Ai/EELmLStNtf1nA+X0KGmeO
	 6Wjrb7XynvmPg5LO7QlDU1UCgYkcpdzzxGKORe42+bVrU/Xw9HC1ixW4hBbHsJ7ZT1
	 moOcoRjPfZxDpRPN9qqVKUDnl5WVT0tmWR35kDd88bTwh8ro1EIXzCQDxMwBS9hw9L
	 EDYF89AunpMew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911CDD2FEDF
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176954603358.27503.9908455435891906549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 251f9ce6eb9fa87f8beb35060d3f240e472788257f67bb5dcebb81efda95c17d
Date: Tue, 27 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769546033
