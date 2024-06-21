Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073FF15F30F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 20:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719001943; cv=none; b=U+bF6GL8ZNL3dKX47ZEST58xYVybyTuFk/N5cX/I1Vl1qAEYFbxZYx+V5EqNLtQ7GJH6u/aEQKTkadRNiY+tryQdOQ/WjO69mQEs/yx00J7/YqUcXMyW2lvyZPQ9kiuex7RHrQft1EiHOsRYfPHiNCTi4UxG2diGfRg0QxE3T4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719001943; c=relaxed/simple;
	bh=OCYt9TXd1ruBl2T2XIvAVNDK6uURy/5InRjmchG+uB4=;
	h=To:Subject:From:Message-Id:Date; b=CCxtIE7wznYgMTamtTJmj+9Dmh1HgNyfeMkNv5aBaBDZ5g5EPxVNGfrVVIUeLyyHHwNaTFkDAmF+yBYtDkKHdSGwK65s+SXcAFHQ2XBIl9a2lhb9qa4+u9qGfQ3MEF3nDyw1fwMgJvKpNkNB6Phtl66K1vPg4njcj4Lb/9ZiPMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HivkWwdS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HivkWwdS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15FBC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719001942;
	bh=OCYt9TXd1ruBl2T2XIvAVNDK6uURy/5InRjmchG+uB4=;
	h=To:Subject:From:Date:From;
	b=HivkWwdS0coLfrw6Ecd3PfLoQeDdIC7YjkqrPlH6BAdsLFo07pNqN2MTN2ifO5+uP
	 +ilnS4KnnIawhQtUcozl2PbIZnYK7yx4yYtXW4jxDWlIWDZTFyPGEAWc10Zt+QsTot
	 5ZR+pf5Ru7N5ec1/jv9Ty99RDGZbYwM5YXbenum/fwlOp1SJOlY25wDu/ivKv1wJZ7
	 ++jfc3eIZ+5ueFf/30H8uAhMFCDFHLsWp5KTfodvQOh8ta3GR+fBIsdWDd24dw56bM
	 0ZTnrd2BCp8SH+Dy4cEfEmXbgkELN4+TlronIuNHQXMlitkeoSoA4F0Ef/fKm+86Kh
	 +8IUypoLQDq+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEFE1C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171900194277.32549.12285807918591266216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 599eb8ba8e1755347191b2174ef824d9534fee6ed4841dcf3c265955f1a6e70c
Date: Fri, 21 Jun 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719001942
