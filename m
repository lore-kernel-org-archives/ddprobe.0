Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 997D741CB5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786816834; cv=none; b=jZaZ9uDDmudXaY0IhmU5v3SR6hSaxApiz10IPzb+lb5SWQccie/1aMCXzxVmOK3N2EnemsKK6ReI5SkVv/fVcCAdp/Sf3ewW2VikipqJX2EuU3XPHmvfm5aSk6QXtS/k4RExWIE4q5HmI0XFWeebd53UegmmIQ7e6t8frFKBZXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786816834; c=relaxed/simple;
	bh=9gYXNTTgMJ0ZHCKYcYwbWOm9lWMdrL7jF4OEZCMMbXA=;
	h=To:Subject:From:Message-Id:Date; b=BRXfa+RrnTa1uqJ8b50acK430Ay39dUDvGxH+2gloFIEQrZc6UPH6EJmVhv598ILcTjTVxQgcjOxVW1lKWOnntWqpmRuG39a7WqLbjKflIZ2OCe6kAgrsDa0jFr9606FydaAiuvwPYnkPM+F5xDI/ivWcDdO9Z9+jRpVinWESP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epcnKpjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epcnKpjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31E1C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786816833;
	bh=9gYXNTTgMJ0ZHCKYcYwbWOm9lWMdrL7jF4OEZCMMbXA=;
	h=To:Subject:From:Date:From;
	b=epcnKpjl3AQ7LUzGH25+nrRCSKIKj6Bqu1DDFndt6i6wG/AMLkIpD+amyVpzG/DXh
	 MdbYRY8rOMJjV2aXTdcH50V8J/iR/GVz5iZ9gHbQrNYh5NZWkD/0ZKQGOZiKIPeIom
	 0LOGomR957T0yiShXPBhsalwgFx0SPl6glgCbFdNBz5hUx/72qM627n7WA7mymhpnE
	 6wEJCCx8qpaSAtJpaGsncLTTXJZGlxM5V12fZBBg9ZM1rLRan5MEaJ320IQIpNaEjw
	 3IGKnaOxZa7UeNIdCpADkVNB137r7lGwn4gglD3MtG4xwwMwV0vwD7dFF9ej5Y/GsW
	 +reVrjj2ckXKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB77C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178681683369.21354.73603730749850475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 871660549476c2a261d53347ccd7fbd06e896d2afc0b8493de7c440d4cacfba4
Date: Sat, 15 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786816833
