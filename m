Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26523AE1AC
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772811893; cv=none; b=kp9MWHJ3vOsAuGdxbgH1d0mKclGuWlQPiYWlL9srzocn/DWcgFkjRrH7iYzSbK/QVyqWNbW3nTA5BXMAryrxLN5/7EPiIC3+W339S9/UaunYOv6Rv0gKEmzE3VrNFXDW02PhIQff0zOQs6EBOqbMLbDNGF26hmO+EmgGIHzcw1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772811893; c=relaxed/simple;
	bh=NMEncdTSJgcK8RdkyOXSCsZd1a/YhUgrRPiVwfrn/EE=;
	h=To:Subject:From:Message-Id:Date; b=gw1uYu/SrPYW3zTuna2u8zHOZuyeKlTR3l9fZ9g+QpFPGQAx2xBc3AD8n9NOg6JLW1p8oQF3Ke86dBkWWHpS6TKC6t+oJZ6B/RJo3QP57hGfLcNLJIDJU8o2DaMMn3DQ6Le7DWSrYmbRanJz6aswoo6CAYLM+W3sq4Hdbt233II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVpvNOZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVpvNOZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC22BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772811893;
	bh=NMEncdTSJgcK8RdkyOXSCsZd1a/YhUgrRPiVwfrn/EE=;
	h=To:Subject:From:Date:From;
	b=ZVpvNOZ9RLzoIjev9CmvRGrVIV06cStrXUfcC21oTVfvqwcpXixNbNtN7btoYLsUe
	 UA8QpaQAEak2Hgik7ZJzLIIXQL/gve+ZFyv9MyGNehWQYnIZhRLX5onPcJzLbCdHo7
	 F2LSkNXzgOo2vnAqiT+/jbIvwt5+Rt+l9s/rYJjJqv2ErHzRSrd1K+nRN2i0vtN1PE
	 lBgsjeuhw7U1k1f1gSQue5RSP8ZHaa+qWyEstYNgfQv5HoY2SVwL1FsVFp9qD75ne/
	 viKQf7izYYXM01kNaNGExM4N5FzuCJbUqr9EnfCZeZWFjLEabOD2cE1p9HdEnWnvba
	 nusGNV4FxdW2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2A8FCB61A
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177281189362.15351.7794864225633846663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7662140a662d39994b35402e3b766ce29f3ed6960382788c0924c5794e3df1c9
Date: Fri, 06 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772811893
