Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52ADF33E36A
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 15:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781967994; cv=none; b=JneuthDf7kUMJJrtns8FQP/1cHE0+ltROjlCF/3S0znFWHyCTxMe59URWUFoAETrrbZB7Lqjp6n68kirohZeMeFemeh7oEBL0kFarLqkeFzZB9vY3MgIM8MQPm1dc2ChsUMKFzdCH1LHd1s8AYqBxfPLvHuwCG8zAvbXUFOg2Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781967994; c=relaxed/simple;
	bh=xmzUacDODid+1fIoTfMCyQDVFiBeUVZ+YSdTHOG9Tg4=;
	h=To:Subject:From:Message-Id:Date; b=tiUlRTzBR7DOYBGxnE2mtECL9ph8yukbf0eWQoIIGES8N4WWmu2+u1bR0PE/P6P3o42hsBQVQLi3oZRpFnsrIcOzdseu59zOUNYuhRabgTFAK6wzKhfpTHuySC+y3h/dZn2q/7I+L/84k4gKCaAn1mSLR3xArVE8zDpvLF07hLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCYoWwvj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCYoWwvj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBECC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 15:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781967993;
	bh=xmzUacDODid+1fIoTfMCyQDVFiBeUVZ+YSdTHOG9Tg4=;
	h=To:Subject:From:Date:From;
	b=uCYoWwvjTC2B0G+f08H2a0zLUA6dMomzLBqAFnPaErbCnQGwUg9qqsnfoNVZcwGNM
	 y3y+qGx05Hvr1Kq6+1k5fT5job2Pf5ex2sDhraBPi38ns+EubHnJ1s0DjoYaALHqP/
	 kTIFohsSGbG2tmhfuGa8OZZgY1B4LnhHsR0UeUHtnv5nzwLTNEtuoUztDfhBhBggvT
	 UBsRkZeIl1DMpA/xusICBOX8BIVKJf6+KjyTQYcrvAYxsuyH16+/Qf3IuqAGZuNJdG
	 OzEdMMAxG2/mEayXGUkJ0QregNbGvm6syVDI0cDgFjmRLUMbBGh4O3SN9YjsM8MwiC
	 /Gjlx5qnB9PFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3C7CD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 15:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178196799376.13222.15537166365005949313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e017b81d108b009e2b591897e53769a70ebe106abba52592414d00f64b1b807d
Date: Sat, 20 Jun 2026 15:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781967993
