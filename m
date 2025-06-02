Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECE5A1B414E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748886594; cv=none; b=DKs/wzRWCryGvBN+DsUK9TcOiQvrYDAI1HVa3rxYr9s5solrXfK0Pi2utxYqgjGdaD6Smu7p9wvxANFji9ozMsymP9My72cnJiLNAtluod9rp0tQ6jJj0F19u7KSK8Lk/iHvxUc+J0bpnAL4F9QtOrsMMmpQGZ/6BM5blJpnV1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748886594; c=relaxed/simple;
	bh=SyUK9N+9m2+Dv1n5X1BCl95pOo3Dl7OGJBdY/R0pTRs=;
	h=To:Subject:From:Message-Id:Date; b=DB2cxEIKxdRSt8II8uFJTJz8FCX2DPWXGn2GEkyhPgBRIArQQSxSxrnFupvib6xw4qSawTaOPZdhP1THO5+DdZChL4QgkFGnIWceRhjxQAxW9QWlzmsKG5jInWX9cJ4KPGROcaW6p9GDqQxznD3+Y+S+xP80v6tjE4tMg7N+6MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K38q5dNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K38q5dNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1667C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748886593;
	bh=SyUK9N+9m2+Dv1n5X1BCl95pOo3Dl7OGJBdY/R0pTRs=;
	h=To:Subject:From:Date:From;
	b=K38q5dNhzVaMHkRbkYBjGKsPDx8Zpl7hDX6uJDbjEkUqP9QdjxeIBjgXzkao6dbH+
	 zy0mRb7bragV+bPHbBij0uYn4T3xmDyKKzZYu9kxR5dZLvso7yU02Gt9iM0uuqAvIx
	 0hqRSYozz9X1kfMPqOwCBtAJEgWkcpJP8Enl8AYPidaUX0cM/NJIB/0n4aWYF+KDpJ
	 i2Uymn/1/0aTwCB6tCRInFD5/wwZJfWdBSWNnLZIBH7iqoUHrSkYX8db5iDNHW0CLB
	 765lzRkvWwggVacPhBdyFwS1vYekTDaC4BBqZSKW67COgvWgsRL7EYrNEjglmDwLxM
	 +ojuHgCLx9PQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A15B2C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174888659364.22546.13934725410887743430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2768736b586947d072ed43ccf41cc12d67d6ecc4d13a78ce56737f906fb571c
Date: Mon, 02 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748886593
