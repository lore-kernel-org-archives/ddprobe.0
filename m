Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520E94562A2
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785852034; cv=none; b=XFxDIs/dI7dcKqWyuAfVj7d3I5NP3j/OdE73rPtLXA95mQJUA5XQVTFO/Wx26d6cGjObvs7Zjk7VhboP/EDFgNZEwe3PyMTEZiDk3rxsu7bdisoAoGDVEpzznnK/bhtU6tv9zMBR3mOJ0u3bXOlYo5LAhbO8DMVal86Znte4v5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785852034; c=relaxed/simple;
	bh=ChPvUM+RIt5753EHIZq06Upci0mgjvNX+LTp41nVdWM=;
	h=To:Subject:From:Message-Id:Date; b=uMw6SbHrvpJmA5nUFZkrd8HKJV+FhxX+Jr0F76xa0iNeoZA8XPPWFylk2WDlVh2yzqm7wYx4NWRYv4TlDMcY2l/vRpPnzOLjZELP1C3eOn3WiNiFDGCVHvOonsEwnZATLvx5o37sKKXhPuzzKLmhhHZ/0KOmfl5PoJ97/AjDiew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7aJVSFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7aJVSFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77D0C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785852033;
	bh=ChPvUM+RIt5753EHIZq06Upci0mgjvNX+LTp41nVdWM=;
	h=To:Subject:From:Date:From;
	b=e7aJVSFqfNdH2T+27ejlEE3aIvz7fQ9tMLL5c25DFvLsw0GxL8FvSX5f8dQVw3PgJ
	 R4A6XGiEzOB/wF2x4hT7/V3CwxxU6JQJ7ClqxL+z3H2BmBl85gt5aYmFpNyJgwDfEs
	 UcdPCTiOqRI8qL6ODAJtyCjl1tBEP2XOf16tMyQpweNR2mPFpxDvfUAjXZ31Q7lAJO
	 istXJKHnDzzwzWHKiXPrrhXMyWdkmy/br9r5peqALT1wL9q06dih9J22wiP5jW5rSu
	 /l/oRBkzwhe/jIG/U1hAfTFBV4n0VmVTG0RBDlAI7d4igP++FEkPq++4NYkoROuKvn
	 mzn8fBSWdq5Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD887C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178585203369.3003.16437514357102627069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d31b74d34d5464f95d32a06b508f5bd20469dc6dacf72f8e63d94020b75b4e4e
Date: Tue, 04 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785852033
