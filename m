Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D95224B15
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770433434; cv=none; b=ntOq/SuJ0WkQd6iS9nq0UgxgLtwcn/FeSnss+XvUO/ne1jtxY8EwVfROUQsq7v8LdC7btOb9TVafHhr0rSgritxbiACK46hB3iHlzhvedPML1O5V2bMPdithp7nQ5fTJ/pMkNSo8u/Xz+MVJI/zTf9vnYttjd2XcyvZOLlc2rmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770433434; c=relaxed/simple;
	bh=l/GLWjcaXPDwr04Uh/DBii52dKblDzrBaqZlaWfVJsQ=;
	h=To:Subject:From:Message-Id:Date; b=EK/QdrK8dA3loqWCdHibuXbuPkZkMQx1qJ0VjEdtNFjVtmNPpQoBnlCzULTLcNXwWncteMCe4f8iqw1Rf7j6XJBiPrmiCBYps0rt0+MtjXvoBXZWx8r90un0XLWTYQZeBSvVGHaaa0OWTpK33hKadIfuXYTBUNHHV/F3tnyv3q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZysEgWnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZysEgWnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF243C116C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770433433;
	bh=l/GLWjcaXPDwr04Uh/DBii52dKblDzrBaqZlaWfVJsQ=;
	h=To:Subject:From:Date:From;
	b=ZysEgWnXh/QWPr1KlkEmU/ZXo9lyvH6tTTgm/PHo5qUO9GK44nvb+hUn+DLeckqBT
	 irRfaDoqwOQJQn+4bTlltBc8s0Xqk3VqpWEJxkytvnAVxM3SLwX0dL8SRuaSWJTt5x
	 glzSm2kGu6aYNO7Vo92bEyi+0Y5bHJWqQS7WOidLjmFEqfV10OyKm+B6ZK1Lbkwk+g
	 TeOtiyt1xPnbOKRBaWzvhBbFTXCLbqKx+SIhZg2PQNyG3JKUQOjLOoSQKJnnO34ssO
	 H0N3BHw2Nw4X+oNiPQl3CYffMmRrKtLc8tshKcGZq6OegpL8v55pniW3Epq52E++cM
	 JodPyvCJo2IbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A33C7EE6B6F
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177043343362.6723.11507098453535608460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a950905972f1e7fd124b7be43605c8629f50d448365fe13414480568934665
Date: Sat, 07 Feb 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770433433
