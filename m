Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279BA4E80A9
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788792034; cv=none; b=JkfBIQ+jIHTvY7B8vMQAIul7B9n++BXPR403hDcFZtx5lT2BkbA1lHIEJxfJOClg3YiT5eNrs7cfzLNABgqA89HcxnFflny3V8uDJSGMP/ffcL3yDQQP9tg4X639c+A0UyqmGzhr1RqFVeUF9OFMDmE5ExRAG5pGE3sYayUQJfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788792034; c=relaxed/simple;
	bh=pBYeR+sJTh5nDZpy3NpfeA1DFCRl8/edUFkuKO+YKEY=;
	h=To:Subject:From:Message-Id:Date; b=sLz6UeLEwUNJEPokg3yq7UBWNnx2cD9jUguKph3ewEtWHN2rayhLqbyfyT1m5KhQ0zgFN5dlQ/kzPNvBAqL4UMjPTu4sPRyGr+oN9HlKtPWhE9VyiNjuFq86oGE+xu9wp25XZ5/SL0L/NKt+Ahf0Nm0U0DbIqxzJj1YdTfjgzvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNbBxlbL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNbBxlbL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFACC2BCFA
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788792033;
	bh=pBYeR+sJTh5nDZpy3NpfeA1DFCRl8/edUFkuKO+YKEY=;
	h=To:Subject:From:Date:From;
	b=QNbBxlbLeOROMW4bW+aO0bpeMbdlpUTxr/qCKOcSAhI4k0yrSXa+6gxfFZxNdu+DP
	 7RJgqZdE/mbtO1PFEX++UD9D0tqtbKgO4uqhm5UsPAmJQ+jucHGIQPI9g3kwtGDBLQ
	 ePlo7FocDRk89AqGpUJ4kCr84Bx3W0r5JgNVFJC11xEy5qrUBS1fAwVvAK4FemZBSc
	 B+/+qrY5e/OqZg9FqWg73EEnYMvXf7xilkUBrF7kIcAr6k2DxLX1JIt1v27UIGv64A
	 5TapQk8TtxNInzdCNeGzvkUf+H34qxwT93v5ozDWLStA/FoCSN9meK4D6CYarUBWNB
	 eLk5yekwS/38Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4767C79FA0
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178879203371.18883.14702420029146715339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba1520447e18de308ee81c66df36c6047e2ecf6edaf1a2e2abc210a350e2b03
Date: Mon, 07 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788792033
