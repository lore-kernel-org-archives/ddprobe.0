Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3AC171C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 19:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D260BC433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 19:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688154188;
	bh=FUhdaz3KVmeGvD788pJ3oFFqDWHSHd3AShdN2x84hOk=;
	h=To:Subject:From:Date:From;
	b=NlSxZhQmEjxNZwITz35hjEI2U3pHYy5yRR+r0u9+VQlCJNJAB7sA9smSVZxvsYKMC
	 rI+dZhASWAumfDRofgUyom1kAQLUIdEX1RUXlpPAc0Foiv80vDeCmpvRKa1E0q7tYk
	 vAPYXj7WINRhnDCWgB9OeDjWIwP6ai30thCWY0luemgmoREnaGHA6/WYIVfEotWMVx
	 1/p2qxXmuA9ca5NuINtYwbdyMsznVX7nuvCGtcrvgn0G/X8ZggsZeexSTRHG48dYjx
	 NG6+/iusVleTDCueIZ2rLg4sf2kCltMnV0QZITKIiLlu4HRjwoF4X7sTTA6OJYWAD6
	 k0E4ZzsdyX/ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3EE4EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 19:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168815418871.32470.1936289306276292269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1fe7a16484730ea1fb945bad50a4d60da432af649c03289a9d4e500cab5de05
Date: Fri, 30 Jun 2023 19:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688154188
