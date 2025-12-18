Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C7025CC63
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766081634; cv=none; b=ieoPC5NdrA9pOU/+rNozqToMpmW7fqstlu04T3UWsIEziQPGILZdM4jpCi6k+U0XPz6vvoW9HVF5xS2vntynfjUpbNJXCNIcCSyqO2SS1ZXqG7iAGFbUOmYIpcDjTBkr7myBu+QswmHNBc75qrjX095gTrGmRbgYvglo3OhH0sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766081634; c=relaxed/simple;
	bh=4P93MDZdBzGqh7oy6YnCAhE0+SqRJvQK4TTkjyA93v8=;
	h=To:Subject:From:Message-Id:Date; b=pfpHAy2Tw/jOVKqJMHvfPspx0bff+h70h1XKBQMDZgxgwYjAFRPEquyQ4DbEbUhCrmZ6qcefAlu92ENhC+Khp1KAidwL0n8Q8gJHZSuh09KRaFi1ZvBj8mvAy/5rVwRU28Lg60mr6R0bfr62YJhcSlXByKzzpBtgp0bJdm3zyb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8Wjwf7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8Wjwf7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBEDC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766081633;
	bh=4P93MDZdBzGqh7oy6YnCAhE0+SqRJvQK4TTkjyA93v8=;
	h=To:Subject:From:Date:From;
	b=l8Wjwf7m2X2JXVkayvEfOHEGx4DWusX8uKwJwRZXlD5s17K8w+fnUXBRVE2CKg8ME
	 KyJWdqn8F+NIqkda5E3IWplj2B3HxxxLJs/eWc9tIlhxRb0MhXYxmLqiNqXuAxRnyS
	 Q0YtfoKS8f4VtzDFqBnD3rRWaUWeplUgXQjGFpmiejB29FGiQLCuPvLXgwTHjFqbPD
	 sKieE1TSAMkJZlHzptkLr86CHmL0cghMBH4p0uJuptU4Yk7mz/jz4j8/tGLI9XCv+d
	 cnQYebAIwCeVZXdBzVkI+We3rsh51XYkvLlBh9doio7LQAUaNE3rqhxhKLj0Pt8HVD
	 JMPGn5FVyeNIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEF2D6E2CA
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176608163360.30084.6336965649049653954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a12f96f4988229ab8adaea525ec495e072dea64066479bc62f3ce7cccb3510e1
Date: Thu, 18 Dec 2025 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766081633
