Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150F525F7A5
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774323894; cv=none; b=tCiOBN9Sm4FB7HgpS/QBFWSF8fj+yVfZ5Y+ui3qqK+XEzvYuQSKaMyH27J8czk6PJ6z7dDCHz7PGVwH3r3685Ob8votVwi+PhF7CfnEn16Aei6pElaZ94QF0hhBYACT4zcZxjWMhdhZ0mPp/R7xALsHSUxAuphWUEbeG3Ksi/x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774323894; c=relaxed/simple;
	bh=f7uoTx/gt3QwHNrCn7UxF8ofg4qV5WjTSSA3K+Wn8Fc=;
	h=To:Subject:From:Message-Id:Date; b=Vj3yu4rnNHPXI9Ali4DaEpp6ibQmuZyL7fvfTolQGcFyTJumDRFPvMNTdSjatyFbID5G5d2tB1SS/lGUWDzMqVAtF8bg/9Ym8F5gju3ZY8H1LjxOB1nH3Ufd9ZfW9fJiD7BT8NDVoBVeifkgBuThhF/GzCoTgM+7pPems/Cbo04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKfu7cMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKfu7cMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ACBC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774323893;
	bh=f7uoTx/gt3QwHNrCn7UxF8ofg4qV5WjTSSA3K+Wn8Fc=;
	h=To:Subject:From:Date:From;
	b=JKfu7cMnjpIeUfgE7esQdjSJB7tDeHJGubVwdsK/5vboqtmu9I+xrnZTbQfWytXEj
	 Onmhw24tCAIRD/0KYJHhMCme6s0h/A6YsBOPwH4MTRcCzXkQfMnYYCUtEdmywGawiL
	 xZWQbJ2ZrmkvhJkueo9yu0l7gEYtfjYDWkUf5OQ0JStNghIXTHvm95JN7rOdlJQ5SP
	 iScDP0nNu3+6583ZVyQ2E752QwxE/sdcL+WKc2hZB8851Mx3mV6G2jTzXTuH5Fzr4n
	 Z/tSs90voK2AObGYiBIBE7OaS45+zkBK9X2HIfjgMOLfYvQvLNCo7eR/AqgjNkVQHn
	 ZFiVee7PDlddw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93184F532CB
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177432389359.9737.16573280637942374278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4286ab555cde9fed75fadd6c4b3d0b10b1c88ce64d43e6cac085079b8548ae9e
Date: Tue, 24 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774323893
