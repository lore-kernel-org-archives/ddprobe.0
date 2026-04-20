Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C3523BCF7
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776654454; cv=none; b=uWY2mOUHHu4PVPKMBn2ivlN55eh2pyZzO/mLR5eSjzKXbek6hYDA7gExeT5IHQq6THAMe8zuCYhvKEZzVjoW7j1rTRfenTrqbZRE3DTwj8AYsmQYcd99wNJ/GbgFBQNi1jO2jv/3jGYfgzPLd7cbk6v+T4SnRaVAcwiTIenpMpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776654454; c=relaxed/simple;
	bh=t0d4/ezvOW1O1pMv1iP9xVNwH5+uRiGfdc6hUVU7vXY=;
	h=To:Subject:From:Message-Id:Date; b=Li3gBN8Q7XPKE03D4v1nrWGCZqnzm/B0jgXD201aHN+Axzud44LaZ7F6VHiYtBJUsIVCxYWaZA6jSfPTsEt0hINBQC7PbcpXTaWkzD19ent+f43hJRsBH1KHKC7RF6sT6g++BNE5h4GxIj1N8khsJqTWOkcDKZMR1mp6RbR0qhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlfoEjfu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlfoEjfu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7CBC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776654453;
	bh=t0d4/ezvOW1O1pMv1iP9xVNwH5+uRiGfdc6hUVU7vXY=;
	h=To:Subject:From:Date:From;
	b=AlfoEjfuw6PpNVgLqSRZN+XJn/K6EE7mUGwsVf6DOFTxdk1KsMAn5la3xtEgp2FaO
	 mRCTyF79dlrPfy0kcxYi74ngJYVbs/9F9HxQqM0XEU/oem2ZYNvA+xop3zlSZ2gLWw
	 Ge4QV5kcU0/FVhXo4b6Srlfm3itCD5pWhkuhnAuxA3+UEi4sKJw/HrmAuDXQZEA4o0
	 QzNSgBH++wTfUubL4HpI776HCHLu1r9KmSlkMmKBGtiXmVGwhRazpYZiGxx59dUnJp
	 xwh1E01R73fgY90CJg3FGKR7meAvB4QbMsQQ6cB1o1BlYv7cEOST6Vo3g+lkJdSjVp
	 lwEgiOb1GxoFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9457EA71B9
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177665445368.18270.5915413153790824704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48448dedda07e17f69e152c1dbd22e388011fdf414e9debd6b059ab3fae4a682
Date: Mon, 20 Apr 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776654453
