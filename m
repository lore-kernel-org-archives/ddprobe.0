Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140F817BA5
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754167794; cv=none; b=PftfyaNpHpsd8bIR3firWIPlPo/QEIz98fYlp6ZC4i6TjhUVT3J8NxKI3G2rHELC93r1CcF1UJM6nKZ+dgjtbX01c02X0RfF5ZXuDkgg2rD65Id+2EkSHs+6z4KWMFZ1NNXJgEjEW4tXmPC+p/zRMtdITJXKWGrF5JcYyHdfFak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754167794; c=relaxed/simple;
	bh=XD6HmUtawHFmj67iP9cQsoKZrqoeu/68LGfWkjJe3xc=;
	h=To:Subject:From:Message-Id:Date; b=WITSkNjjls/+mXAIYC6sthkj3lrR+WTiL7Y5yPdcmkz52xfEoz/1zAeNxP7igJCeGJAY1t7PPMl4oMWNxOWPYivFIq31+UsWF7KHTBuhN8OIXqBxlwB3TjJIN+mA7kRfnorSDQ5qtfe+h48aiJVg1AA5ecjMzeVGIltzYGxfkAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YY0pkcRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YY0pkcRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59B2C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754167793;
	bh=XD6HmUtawHFmj67iP9cQsoKZrqoeu/68LGfWkjJe3xc=;
	h=To:Subject:From:Date:From;
	b=YY0pkcRaTuhlvH6oKq35Swxg/Y5mLyOIztUBcZqxByphojJWW7A9G5KUNIV7qMNgZ
	 ziRtmz9IZwYpd+dTSkD+hidS3QkehPrnM9+2l8gOLCxMqdQuJVEerc9z2W3AHmDitz
	 2+Hw05VMJoO/mQLPChydJb1PzGzmN5gXmxBoNDa9H1qc1bhHtIMpEvxZjHeHFKgJg4
	 2MMNYHhtNJZB/0zOrgR+Wq3BSGPcbd6RPohJPWMZEjU1p+DEWN0hnK/jIL85Q6ncet
	 EQ5dFy76Zl4IGQvCe00xUmwgfCUicD4qhCp9ODodQJbsozjZEZ9kwa5GZqmbt3YNLN
	 6+YdOuuK+13QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DFDC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175416779357.11739.614534278455688995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589af0a310d67eb42e0b07aad0eb86e4564e59810953b94d45f9e257e854efd5
Date: Sat, 02 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754167793
