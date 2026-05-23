Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A77518DB1F
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 04:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779511354; cv=none; b=X3r2pnjt4+utPLKUAEaF5mH8XhYMGMImZgqM1Mgul6VzeOW8URYQVS58wZ3mUlzBnjtP2kvUynZa+C1HSOfHyd0VZ5NCgOsGEKUmCDokzn/W94Mi8uAuCnDcEM4ZAs9EXTAwkDXJsRueP4ktqNVkRMf3COIJXbWH3i8sIuCgHq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779511354; c=relaxed/simple;
	bh=yJD+D1FQHxCfE83O0FmpiZCaNaQDtzWHnX+4iKXawCU=;
	h=To:Subject:From:Message-Id:Date; b=rgwYlWNm44IQhMDJv/tx4dQ6shREL170g94zLLo7y4qMhZQ8w5jDNliim+B5OF3KOgqSe4T6BfCkMcTC69Mxs2bovXcZrukki57IOshMtoqID/fOPQ38Zd1HO6vnTcaKUXizpxq7QV/ZkyZ2wjHXsHZCaE4KwG1CY2P/mqlk6Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivDyNLCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivDyNLCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB99FC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 04:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779511353;
	bh=yJD+D1FQHxCfE83O0FmpiZCaNaQDtzWHnX+4iKXawCU=;
	h=To:Subject:From:Date:From;
	b=ivDyNLCRiEevAwLv1Yugkbto3FgSIrzO+nwgZwHLIr6mT9xidXfrqVfyT4NZQRrKc
	 X6ndbe0Yf0mPPHrXG/cYiIVzVMnPCPZ3oOil9wz8+UWhuplS5giQjPAwng4P6+xw8t
	 96MCwewtpPWvfnAFXnrzi4Bv/h8ZMcQDq+uJya6Rj+lmTBL1nkeoF5CdmrC9cnL8wP
	 a8ry0aDNgXB9ug/keXFTPeWqLTYwZ/zteruRUnvs6nIdKXzI0QKpLfNnGYWaQWoHtS
	 GBTHMCfIszYL2e1aRh1sODGS946Ek+Wz3Q4eEPrC4oQ/7V5sNxfxB2R6PXtr3EJQbx
	 v/0jfLfveAqcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF12CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 04:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177951135368.10198.16775233113122034773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee22b636e2845b0664ce3cc1070f1eb37f052bdb4eea1d9413eee3563b2b2210
Date: Sat, 23 May 2026 04:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779511353
