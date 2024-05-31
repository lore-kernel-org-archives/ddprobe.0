Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51ECE17C95
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 14:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717165463; cv=none; b=aBseYWOBqWFrsb9VctuAuEoeSXurb5COZJ3DNc2jUdJcV6z3lOwN2czmgI+eTK7jmYvq7/gomm8jTSNKW+P4qxDK58E2C6i/peYg9hSNRIfhj/CNOh8zEoliKmTeNfU5IoH3x59ezkQarexzXYlNclSPzfz8QTvepo9o/rZjZXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717165463; c=relaxed/simple;
	bh=hzNaWMxy5JWbSb5NaIXiv7N8Msv9OoRDczbUQkUkQ6s=;
	h=To:Subject:From:Message-Id:Date; b=Xxx98OqJscHweSBqQF902VLR6sNZAxUOhOAqxfNMaSaogp3jN59+HSBWejvHX2h8XPRt1LrTRnd1Vu+5hSdpivtUGK2hxxfJ4nMIDpEE54TY7T3sGrUL0z9z8hH55Yyxk49lBTqaNcttCHW+Q0IVit4F5ZEdEk3wwRATA96niXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FP4ftvVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FP4ftvVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B7EC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 14:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717165462;
	bh=hzNaWMxy5JWbSb5NaIXiv7N8Msv9OoRDczbUQkUkQ6s=;
	h=To:Subject:From:Date:From;
	b=FP4ftvVKERM4GbZ5pxzZWhaO/yTQCRIWUSbEI2c8FGNbC5Joc5fABOUPLy7ndo2PN
	 Azq+T6MhLZZUSvdfx3JLHSPyAtrxkGvg9oBxM9CXuuT0iQPb/NXthztBBbouJkJAtV
	 ysj1u1li0Miy3+zW0BgB43fVjxYgtnSNKbYUWei4od6HtMr6btpTyppLOVpSWlGoUO
	 eT4oFg6LfgFjYvmAQjjv2DXrKjd6knXqymbk70B64G0YMri/xbGFuSgmGdX6tEz9Xb
	 w4H28yVtBGMC+7TRdV7Sd90Zf0V6JW1XuZ68KKcY6A1MJrudx44TZTU0vyI0jY4SQc
	 cnjQ4tTeuC3cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6DFC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 14:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171716546277.17693.4627042216957498458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 375e87a30618ad1a7f8381b4023262c90585bd9ee9516490e639bfd055de5cb0
Date: Fri, 31 May 2024 14:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717165462
