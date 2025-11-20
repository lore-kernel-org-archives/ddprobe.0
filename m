Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDB92F6565
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 08:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763625714; cv=none; b=aepFgLZN5RBrrMYw4U9a/AaZ6cSRi0YW6DdXuevRk4k0cwkRwVzi4XnPuCoXv9iGlpMlhl0t/rxQBYyvcH9IUKZBGAGSugsGqq7/Wg/rujlq1/lKYPctuCyM1jW1W3/5l2+dcuKPLwwQvh/RFjNpkds4QQBHjhwyHInYutg1Q8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763625714; c=relaxed/simple;
	bh=YJfLV65OJokeIRb9Mt6cB9iMaa8fX8f19GHCIuyWHS4=;
	h=To:Subject:From:Message-Id:Date; b=F3DVGomt0PFyZigeUP/ur103Ywe0yU+6WSSgUoMjV2TyOX+FL2AeuHrjWoBEiu/m8xQHWiRkm5FkkiSLJjjlQm85sB7Y5Sfezn0FxUuaWQOQ9Sp2R4xhqaDzmBE1MjHpEAYYcEGqU1UOJ2hawIcMZXMSrZEYqTP1Rjv73Hkeq9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjVeeptz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjVeeptz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25D8C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 08:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763625713;
	bh=YJfLV65OJokeIRb9Mt6cB9iMaa8fX8f19GHCIuyWHS4=;
	h=To:Subject:From:Date:From;
	b=HjVeeptzXcE4RkC1GCaKiWX9T8ZbO0g9fb12H6LnLJQnlErRMNT1juuOBzoYWbr9t
	 kJDYFkGIlSwBtnDfP4VIFlzXfDiViQhJ/o0q40ITvdgOazCLsOx1mD2V7Djl4MbSPa
	 cj6GbLoaKh6HqyrgdxmX8M2j6WOCtacA29WhOIdz84IDBXeZeSPc+5HyEOVwlAkV0e
	 9EAvMLdOVg+sOoPN3Q6KyWJBaYIru+hr46HSk52EVtcqlJgUtwGDgL/i5lgXKCHfXp
	 +brA39ZjvXDiqbwfi0INYc2JOu6cKFlAB9S+73oKjtQAAOfrSP2QsLjXEMveVpq+4C
	 0Kl4lhu7SHtgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC97CF64A2
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 08:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176362571363.21198.7402557396170770366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bdeb41952222bdc154f8379dae2ca520ee899b5d5c33a25792792f860d0e244
Date: Thu, 20 Nov 2025 08:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763625713
