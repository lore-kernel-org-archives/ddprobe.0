Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1921023E330
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768665834; cv=none; b=leonSCm/diG9EJInDHlQtYzFmpt9ZlBuz8rC5ZSzzZLSbkp1Gmg5rfbjj3ltGDnOxfN/BhRiJW+i1xrNXV+h7QMAj0EIa3evJ4EUfvsMhIKJBSKOsMtVJGpcVkkbUHE1uQUlkOTmx0kaBwBoOeOQ6kKr8zzeOJRPOHnUvD+zY3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768665834; c=relaxed/simple;
	bh=Kl/+ppRsWRUvomBdWTzllMWT2boE+e04So2Vt4m6Zz8=;
	h=To:Subject:From:Message-Id:Date; b=V2SF8PlNWllGYF4uNBV2iy9pvg2+DF+zfycMgB2yvqIiRSVDlOYjDFNeskriYTemAi0gAXB/GPbouPaRXMXraVr2cq5JTa222cvlYHaSyjqE4UtQZtua55YlzcA8pJVg8BLtdPtmih1Oec70IRNqMaVnMwu0FPbHyXcdODJMlT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dG6+XPNB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dG6+XPNB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E26C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768665833;
	bh=Kl/+ppRsWRUvomBdWTzllMWT2boE+e04So2Vt4m6Zz8=;
	h=To:Subject:From:Date:From;
	b=dG6+XPNBOnrSqJxHarn3V0tGISx9HFOiDjiDHbBc1RurcFl9kzSzIY60BEtyVo3ST
	 VOVnJp29aIXWKtZiz1xy1oDCdTxQeGLth6J2Q4/CqT4JlE/lo7j/Rus4zNbqvEvAs4
	 /FHnKJsIsEz3gWn10IareKX9S02q7fZS4Fq+Cat/DqUTj3tqzUKoG3goIkNnXeKrBQ
	 3O9P//E8TFUxhQ2ilC7mGUxN5REWQGxbnVaXv4fAJbIic3ynKJcr0sbijObnhwOCn/
	 UGwsJx4yyJIQHfBwP27uIZfxJwkk8ZwmqbQDOtNo4oDiEEEKdb20xia73uO80dNuul
	 TZBS0rvELhEmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962CAC98315
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176866583358.29068.989415392455155027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8259b94fb3ebd6efcf2b6dacbf7ea792ab4fc4d3316ee96c7c2e50d5c2a5f6ab
Date: Sat, 17 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768665833
