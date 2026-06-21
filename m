Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519624369A
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 01:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782005794; cv=none; b=cEarkfOrFsgOrUZnL/SB89X/Lylpab6Ug21Snw4ppM6kh2wlD9uxTKgf3hT785IdPapCezPj8CB7SWSlc8rJPvg2ptQbVOTBAbXWJeK9l6F3tOjlr+jkBsGqGlHMkK9GZp5dJMV26n9+sM4cWr2hLkKRIi8i8w8b6TrCNzwpj3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782005794; c=relaxed/simple;
	bh=7r+yTTmVY6vrZAo0LOLwK1R1YmBiU2r5CmpaqfICuyo=;
	h=To:Subject:From:Message-Id:Date; b=uz/BheevDW2FnEFFBEm4Tx2RNzNEURldEWRR3XiLf0ibVit8ap6HRjj79ASpNV/OxwYdHBieiZnoDTeJXkWDSReuuEZPd9rYejZSh8NPMED+6SyCKHPlUGLJg0oG8JxWj0bvfXzCiVXDWF53YTJQyGIRVcOOS/ZEM1MZ6PO8z54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vB3O2SN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vB3O2SN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82CFC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 01:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782005793;
	bh=7r+yTTmVY6vrZAo0LOLwK1R1YmBiU2r5CmpaqfICuyo=;
	h=To:Subject:From:Date:From;
	b=vB3O2SN+s6uzeHHFIZGcp5o3uDoJfqYUSgEFh3wDo/BQIRkrWseTai/T2zB9Jd4FF
	 uFYe+TfUQb31jIgm5YZZkk3Ln2hXTfxjrDHHl6Q3+YhEnWPdIVpHHSdbnIDDH+u3js
	 seTDZ7Fmze1dWcztt3CK4y3eSAoSGOj4z6TNr7LSRUFpWiGOQx3GLWsntMl3HPoQzz
	 uHekAoa+/0mrOfdy76LUfNBCjdeFpiOp9wANJ5UbOx+UujIEaelKfYNapqrXaL8pqt
	 wkbMoWdoNHyJ5H3EVhkWL35Zr+CF1jKuU9oja/WURaTXAp1AW0rkyRxSvKCEGJczpK
	 RGJUfEIdzKEbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B492CCD4F26
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 01:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178200579370.4232.16600849981953755265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc1417f1a5308e95247ddf8282491363753504841a526099efd8d0a2360dfee7
Date: Sun, 21 Jun 2026 01:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782005793
