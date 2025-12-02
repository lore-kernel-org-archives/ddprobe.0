Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAD8928727F
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 16:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764691973; cv=none; b=NE6r82CJXBQtU5wD9wOnkrjx/Xwy9cV7AnV5ar+NBKiW+4c+oQtYYsXu26bNGspJqVBjm3/RC2bkPWUy5PaFjpuZqw0yx4aZ4Z2rHiWSxRTMbv/Lu4UGNfimEAmZVCSyI+y7gI2TRm7ZDTlXBJdFGRCgnAPPQ1JYbiwYTQ0Tlh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764691973; c=relaxed/simple;
	bh=+bARhhokWWgGCZ/6h1YpA50uEPuoPCVdH+y7bFI8lkA=;
	h=To:Subject:From:Message-Id:Date; b=HPelPP/19RM+O2R1TWRgmhOw8Ds8O4v6pq6eNWbLIy9wadJ1RzxZxo8royG39RIB/9UtI8UPeOYN/JVWX4SnOrH4/MvqZ9mTmMkFnAL29rJ4aIQ/oNWyN4u/M2ZX9QxYjUSoAyxKprhanOqWoJkNInkXMYFPaurn70LdATjEDnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Erfv+zxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Erfv+zxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E8AC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764691973;
	bh=+bARhhokWWgGCZ/6h1YpA50uEPuoPCVdH+y7bFI8lkA=;
	h=To:Subject:From:Date:From;
	b=Erfv+zxHUsVzbtFPXHSn4EqZR7lzquzSRENaUR6s93jFgdgxwQoRa09yp8iTd9bti
	 eFygJg38mPcYz+633RxKj64i7E6rmfn498/PtaxiaAZb8CDq8NZCfRCT0eLr4xx+LJ
	 ad1n+PXiuth5A/dOCCeaC8hHEY8JjQjxO0IjGYRLUrvw724FaqjFhiHZE3xxdMqgqe
	 MnVJeSKDTupA1HFp94hV93iT84k7DwGRkGA2i4m6RQcxiM/EKdqhBgiuOMotUmLRjK
	 y3FxkG58GBTJr4y1DDs/jSbVfoQdIJA0UlTmkJy1TZmgw2JX8llMsLFOtb9s6Pznqk
	 0k0uX9wB71mMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E42D11705
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 16:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176469197358.26781.13769418124651507175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2c96cfc8a49ff4471b5933dfce9b2e5003895e940753c00e5b0cda391025c6
Date: Tue, 02 Dec 2025 16:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764691973
