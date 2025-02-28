Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA1A819
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 04:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740715734; cv=none; b=ezI2GjDwaBqMIr4DnZ2DG7/94b1LkEXtCbG7h5yzXRE8xjVjT1jGWRaSsthTmJ5NHfyzVYU0rGNM/GZg5mquyicHK7NeyaMXe0lmmxzx++ItwJJVeWfbIj8AtAZxR9mc7liy5Ofy7Uo8Z5tDgro6rLBnj0ZCx6UdT3M1kySaR00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740715734; c=relaxed/simple;
	bh=MOJxhZrRrSejEp/W3m6yplfM5SoCMlwAD80mrtjOi+o=;
	h=To:Subject:From:Message-Id:Date; b=j8ziiYMBWWP10zYH3xcyGvHaHjurOggH+Qqi+VW3Qlsx86nHwfqSXITqKutL7qy3rm0rsxsxUqzGISLUclpHVveCuNKe2110eBGEdr3DzoM23/YZvay5uqEmLlMGOwwi3D7nXjP20f6gfxSGAKjGWj+Cf8B+VPcWV6cudxxlpvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPeQcnII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPeQcnII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5EC4C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 04:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740715733;
	bh=MOJxhZrRrSejEp/W3m6yplfM5SoCMlwAD80mrtjOi+o=;
	h=To:Subject:From:Date:From;
	b=fPeQcnII9xFACBhaZXFQfryFPp1dmVZ8HvR5iwAxSqaB+Ew8QCI1hn8eKAgx/6gLw
	 UZe1fbU7DEKDoGGycqULfBzQ2cVuWRKP0+ln1s/BjF0gwLRB/DbzQ06QRhqUs1V3sb
	 1sS/cVvfnXPX5Agf9xCBW2wL0hHmVWdmY8BDeyIgj6MfMFjfw2pYYk8mwO01Yx9IXH
	 qEBVtPhooEJSDQNsqVkWmxn1qDhTA7jAU+I9r0KNpJx4MM+qGKeN+dyp7xUjbpo2n1
	 r9tqqDalqTEH/apNvR/Qyf2Vc4kK3jXAkpK/TksxD5iBHm66TsJFIR/moBo3rxmBwL
	 zvZbojD1pxbCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1664C282C5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 04:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174071573364.10564.2379929201576836819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61b460df6c50612307b6f62f8518c1275f510b17039e591719b5d01359813473
Date: Fri, 28 Feb 2025 04:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740715733
