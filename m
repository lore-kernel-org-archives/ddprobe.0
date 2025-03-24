Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DD917E4
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742788794; cv=none; b=i4STMFy7lIBtwbXhxDI6XhnE+3f4snOzksnWUHbSEOc9R7IJlLPgDVhgwMavxnTVtje+gW0VF69kv68C1AF+3YyJNQzy1O57ei9RNIgIIKa+WDOjxNcI4rmzW5bcvVr9CE1rSoH/Gy6+o4nmN5DE4I6Iq4QlKOTpTDT1V5muG2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742788794; c=relaxed/simple;
	bh=WHZvLXfNaD3xbHylT2ohLOBtbPDXcc9AJyVqHDAP1JA=;
	h=To:Subject:From:Message-Id:Date; b=Uc/fpEFJt37nyFKRzLan6sGFBhd6wEZZjy8XSFVyJherip1wGNr1T2HuXNcclvJZvP8f5/muDZMCSSNqM+ajflPz9YzTtMtFAON9WhYw++2brjqKldCVsT74USQFUqnmnGNU8+ppafAbe1SL7cQIQMdbx/o6Niv0PDcCrHwk0V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PId/cD/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PId/cD/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A392FC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742788793;
	bh=WHZvLXfNaD3xbHylT2ohLOBtbPDXcc9AJyVqHDAP1JA=;
	h=To:Subject:From:Date:From;
	b=PId/cD/R2NVnZkUu/KRYQHIYxNb0m8dLpVpDrcd3K+IAr0+b/SIQnGxiZGDSB9fZ4
	 g1CD0qX6EiVGn0MYxiA4qPCQGp/ZfEns7THBgX6yY0BcMQvcphTZlW9FYr7qtigkcJ
	 3GSvGRxWFS3is1JshgkCfuw2/MNp4TxNbegJm5gXfUUpJXEMN4o3EweNDjPCvDR/rU
	 04CtoqwDq3pIGjpJRL6uDXEZGIOswLe7vf+jcJSWwRYBo79miaF7ClFfs2ag+6Lj3S
	 2GX0WkiB9/WkGF6AoEp+XewHz3rHne1xsHKoLPdh3+BMEioZ1NGdlQF6mbt5NOWChk
	 2RcwyMWwx8K8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F65DC36001
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174278879357.32165.12124343861436418273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0802d832fa34f2620c20362e88d99d554868474884a9074fbb959c26ced20c2e
Date: Mon, 24 Mar 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742788793
