Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7AA1E3DCF
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752715794; cv=none; b=cJSSf6/d8g1/p8BbP13h6WwoFwBr40ZWau2OAY6pZsUWCi+iCa9RKw1ENuGlwDPF43s4fVSaCHGSkFgI+qSCBFg6ZzmsZnxQhUU5/CdFGmQOKbTdb0k0djkfwd9EAy9h0eZEX5op21qIplTEGAoxhz1rpzoopwksC6l7LyLdklQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752715794; c=relaxed/simple;
	bh=Ujsb9IGQsAdfsAMi5qJUDdwBGyG+ixbjILuF0T84i60=;
	h=To:Subject:From:Message-Id:Date; b=azKNufhNY57gjKr49UAaDrvoK6pG9BffZqS2a7tag+k1oFaWLqc5PE/nRpndcWfeidUfPurKXa8dyyax6+6Fmy9+4HMmu7XSKHk1jWZmLTYpiC7vaTrESvHAi4JZo8S9g6AumA3IFqBoFPCS2dMEflmpAdtrSt4uu2xLc/OOw9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ykc7DgU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ykc7DgU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A046AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752715793;
	bh=Ujsb9IGQsAdfsAMi5qJUDdwBGyG+ixbjILuF0T84i60=;
	h=To:Subject:From:Date:From;
	b=Ykc7DgU2DndNWS+hv1Ii+vo3d4j1L35/nMDFDr5VCPcUQeWpJfVlH6L0iLBWL2K0A
	 uO6PGJsQAsHerePEnl8Ux0CnrtDR8SDE40VvB0JlBWcTX7lOwK3pzUjqA9RiYd0kfM
	 D/uSFrr9D6sWoDFFnUTfsp7eGABwJlw/H8in29RKFQQ2R7LKmywGVGSI0WYEj4wNED
	 wKGkxb4u1ld8CzlkxU74+krSVFVCBinidzsQgYuf2fvgWnwekQczH3q07WEJNVCDYB
	 jVAlS2RDINZaiQfKYT1u6AWVtF1ZSBLmUBqa58O1TcsjZ2jyk+Cy6Ia3HrNRZ+aovA
	 hEqlPL4oEZjjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9088BC83F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175271579358.29245.3556829793083652922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16de390fb7a352934b23901eda2f305df672364ae5bc18ca42059a51d5b2c635
Date: Thu, 17 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752715793
