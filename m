Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA06339A8
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775886454; cv=none; b=g9q1ie8AZtw+biF3ypboW8uqwydlzHedkKL6d+BuutJTJwsJJ1KrEQpMrh6A2ED8f9Mcp1B/JQhCHpJcEwCkbn4y9UhTW47Ed8X3BYvUHjL5zg2AhRJzzEkhoRt1Ea/+4jPtycNS8K0/2+P/AwLSd8JBafo9dBR4JFbpj41kPeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775886454; c=relaxed/simple;
	bh=fUhBGynL540u7PWRr9mUWh9u03cv3NodNNJH7dLaAvI=;
	h=To:Subject:From:Message-Id:Date; b=oiP9MmCAzxZuct0xhWdEhFfmwrF5MFgs4kDKjvf6DuWgDdcayENqRO9ZULLNJkQHZI9u6o7XE8qWtgahrUVWFNutywl4di5oyJCsmFGCcm/EW3h24MFHn5777eyg01rLmCQFvdIIYHaxqS0RoH4gSoN5pQQkJNwBzz/IGmv1q9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBu6OcCn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBu6OcCn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0172C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775886453;
	bh=fUhBGynL540u7PWRr9mUWh9u03cv3NodNNJH7dLaAvI=;
	h=To:Subject:From:Date:From;
	b=VBu6OcCnD0tdf6ynE4QGwBD8KUEdUw9/yzSW5zEI2KDmnYqvgUB3nhjxNMeVih7fr
	 nZuGFRU2j0m0kY9kPrUDIwNdUv+Ku7SxUeKfco31v+LqLqTpLgWNTmOEVJuTm9FJi+
	 0z2flOYyK505WbebZze6T5nyMllM+g0STTOQ4cABttOyZu1uaH37ZHIBPp0565BB22
	 jesdx0jyPhX9/PJLaE9oafF3T/1sQfeiTgNTZwte+xTWpGcT58hh6W6bG/oMxKW5a8
	 4ELWeAX85rmmhVu6RKJ5NeJYLNpYIj8aif7dQWYjGm5caIt+X+CGdUERGv/upAbX16
	 Vb4CQBO9D522w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1299E99058
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177588645368.4332.703485729033676443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd59e3f6be2138da147d1342cb79e07a8c32c280fac34a5f965bf9a8a8152076
Date: Sat, 11 Apr 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775886453
