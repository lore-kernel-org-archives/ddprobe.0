Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207D32E36F2
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753414794; cv=none; b=h9lq6Ytjsd6tLPkwjuXhabVOZN5Wzl1cmUPmlgDcLMQKGAnBTA7cCTpBzaLlOqALLlCnh0ETJhz9GNfSmrSrFAlW6YC9yegA3jNwrMebexTCQo66sFixe+P/nmXc8ttiGtUB7mqz12/DgC7/Ts2g7FMl6ESPyj8r5Vgx08S5r9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753414794; c=relaxed/simple;
	bh=aQB0Lco8qB7ERBphFesPJ3himq5Vf8s/aIjxX2TXs5A=;
	h=To:Subject:From:Message-Id:Date; b=mSFTykyGACaR4bYOhFxS7Iq2NObAPV/V3/FvGEm0GeXLjgki+RTS5rUEhjxaNuVEYuvYH2OYOpHS5AWkTEeWEj/rJ8Mdx8mI1esrk22FLF/I+NfDg7wIQQGxx/6TRPdiDRf2JECOKnMMCGSdPpvOGrlycy9pTWTUpSVL9mHJspc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEJUcnY4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEJUcnY4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B62C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753414793;
	bh=aQB0Lco8qB7ERBphFesPJ3himq5Vf8s/aIjxX2TXs5A=;
	h=To:Subject:From:Date:From;
	b=XEJUcnY4AvEiGMy3wNa9HfTXqSH8fJZoyCqukhXyRVDSc1xELYfxWrBZ/xFxHJ+au
	 agRWOjzD1LojvOpMo4vkXoNqhEpoHEEK/HFsP3XDhzUbfu0mvicie+3xQeqj2JgUHJ
	 roItOpaz0ocBhjXxCQJx8DFFSOSJohcHbTLgn3l3RXnd9ivC6nvzJwzTk1IndgL6Gc
	 u36LlhMzhIV6U/Adk0+qAHj198uTQhhXqzSbliQyOBkqqnyMzJlIYvR6mMsJSbp2N4
	 UmlJPWGHL9M6shDHX+dOxdCdjZn/xba4kQZEhnpkvCSa2/0UfZC22nuIJVOg1G1jUm
	 VRrk8aYVy+dhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9006BC83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175341479358.31494.2977795620293907301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec12ab667cb88d8c4deba1d344680f01042b117157bfdcab960d7777aeccbca1
Date: Fri, 25 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753414793
