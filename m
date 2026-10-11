Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC091CAA92
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791703834; cv=none; b=Xsohn08Huhq4RKPZiq2V2V9Z4AFWgZeydH/J3geLLaB2Uh0aHWR8IUrlN1JgzIGcDE46CpLyZhBO77MX4Wif4Q8GmBGoC4cMXXFgRtN2Sm9OdILDjgGIVj1B8j9iGZqw9T0mrEXK3/onYkZzuZXvd33nfhiRCAUwMPX+87qgAcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791703834; c=relaxed/simple;
	bh=HgPfzQ+bkR/XrrtBkH1/yzDyjVUz8trp5o6dU+2aLN8=;
	h=To:Subject:From:Message-Id:Date; b=igH6K/fUUWgrxzet3BIANaOqsDzL8a/GUt8n423Rk0rfTt7oZH7Ag3fH9e6r6QL5J6vhP1mPgLTe21VEj+rsNdx8e1wckSxN2yVfnyW954TdCENgBcqRylDAk/R0IbUEGODGqity5WTrMLeELNEITcAFSM9CoXxd+qDZ+1KHYBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fY04Z1Ea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fY04Z1Ea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7EC4C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791703833;
	bh=HgPfzQ+bkR/XrrtBkH1/yzDyjVUz8trp5o6dU+2aLN8=;
	h=To:Subject:From:Date:From;
	b=fY04Z1Eav4yoSEFecNHc057kFNSoDRtimu76/lai7uRtIR244OYD4hhs+6+lRdKXl
	 qrU38lL0Tr+DjqsAoINC/ZSmpXQLypbEmsPq0FKoh0wywZNAI1GeQuIg4f3WvIom3l
	 vC2/BXPndCm7niDora/26P1YKtsgMGdqLxYUxZPAjjIBPdcboRP8wLVuqJt5NefLwf
	 n4J7oi330cxseYzEZGl/zB3uUoKhypPoYqAszHW7QN9mljGGf+dIka3FZuU8siv79r
	 cjfln4n+qauDHX/nLdhYFO5kDrIS0lmKo+P4iuQFJlm2ytLs8vFngfOCBsSnXqcJFZ
	 L3MM3eVV5GqRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AA5CA9EC9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179170383368.25297.12287676714500796965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f649a46e4decc148d03ae00af65696602fa22a67366ca7d4986d3d0314662952
Date: Sun, 11 Oct 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791703833
