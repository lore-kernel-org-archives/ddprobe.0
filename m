Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01ADE13CF98
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712741897; cv=none; b=eZkKGERlgk8pfgKXt8Hszi2k6EJEt164nGN8NfvzUaboZsQctcSASFfmYC2SI+159JjrubwE6Y6wug4UshczYq7Xo0RBlk9c3kLeuygNobiJxKgmGdTw+9KBodm1p1w6nXSHpn4qlh9N53MIomz2PWQJLU3KBPnAjPcqkUCyg08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712741897; c=relaxed/simple;
	bh=NSJ6wtH0w4DmWVHbSGSl3BXDRmmOp0UlTXdiinhKEEw=;
	h=To:Subject:From:Message-Id:Date; b=FkSA9gsXfS0Wz/NZtfb0OiWlJJxM0zukXUIhXpJTL4gu/sBbGS0eZovu5Ae/y6YDcnAJsIXcuy6qk5a2k0KfsdLPJM6FUe/BdO7Q+R/vRmAK/W2B1EFx6OOfhnJDHY2+S42NiqsMsv/D9WARNXf54duUINfUxVlze7ijc95HzzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9CBxk+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9CBxk+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 890C5C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712741896;
	bh=NSJ6wtH0w4DmWVHbSGSl3BXDRmmOp0UlTXdiinhKEEw=;
	h=To:Subject:From:Date:From;
	b=S9CBxk+QqT3y8A/R6LrKY6zlIdLQH5JlEWhnizu+M6+BYb9H6oHIzntwIBLV0yJ8N
	 3JN+EnJf1DE7GI7MZo2HTl6vnd3R/acCVgNZYTwT5TuJqFAKlkC8SI+3MffAEMWY7+
	 YlUeOzUDR3bPCisyFzzxEFNMXG/MqjjU2opDXGd+WZtVe8akAjFCghsACE9HIf3QrS
	 2oqhKPiWfod8QXFAk62A6AczDwoZVsMB2YcToMpgG4RtcYMRwUeOF2fRcyEuHDQnYi
	 mna6IPD+u7FAu/cXOz63DJJeJfwxNnD1yXFpF1mob2SsYP2jaYxLnvW0WGJpYGK5e+
	 iCGEoLtMvseCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E809CD1296
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171274189642.27141.10711543739970343436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d04dc420d625dcaa4426768aa830637efec2b30501867fc47be7a19bd5df2548
Date: Wed, 10 Apr 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712741896
