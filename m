Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E1E47A0A2
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768984435; cv=none; b=aADozzQ/eXpCG7kYjpP39gmlNoXOIZvr1oBB3Vl4UBYCqg8E0m+cgV5KsbOJ9ZBPBv4KfCxC0h1iQI6j+3PG+M7jPNu/45D8B9kbtMpr2XbhrttkC/tVZW3ArEQaXrhbj+qpEUWga5wgfZHEl/T6hRUh7Hkbas/sjXKj5FsAx94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768984435; c=relaxed/simple;
	bh=YgQlsdku50Ut7xLxKCzvERtiDy/25KCGI9kHvKYhOxA=;
	h=To:Subject:From:Message-Id:Date; b=GIvSWZBH9jUzQkmwbtSDqHnWVaqGKCtM3/Nnjxyi5x/7eqAoAJ08IYKyM/rUPVvJIX/UK0Kgf5OFh3dPuXN7lTFEOvRa6oI/FAWnRrHJ9XOPfm5XF0dIFV6bQEiY55Goc4jeOaiF83TfyTrjGaBVeL4On4clppQ+bUFJ0xo9JgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpqwafSI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpqwafSI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD5FC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768984433;
	bh=YgQlsdku50Ut7xLxKCzvERtiDy/25KCGI9kHvKYhOxA=;
	h=To:Subject:From:Date:From;
	b=YpqwafSIwQ1ILdj+WIidKbkz5EYMWZLpiiAfZJl3ZpN4URGs1reqVJdmI1szagaDo
	 htmhs5ucrBfDwBC1AnSJtT1pTDl0hgh1lyOXabDUNV0g1h3E8Q9W1rQiOiC6fD/uS/
	 xWhwK7IPlKZ5tGRaofA4KNaRxiUXRtf4e4bsVjUbndFitvp6bUt19nxHDDj/GKa37G
	 GHCuv4K0peUJSMKjFWREVfLgeClsQ26NBBrt21f2eaMT9dLInvcSA7eH4NI5fwWLnY
	 Yj4/4CzGGJjVo6B9u3woOhrIDweOpksWCkKyvAjLDLOy71C9Zlkj6mJrT67mA6DO3l
	 7EyxkgiRAH1og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90829C44501
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176898443358.27538.2707775774565822463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 402dbafaec5ada90005e911cb1396d697b5301a432b23726e9116ba5079a173a
Date: Wed, 21 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768984433
