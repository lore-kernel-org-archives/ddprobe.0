Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B82FAD2D
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 22:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717279523; cv=none; b=M5Z8FK3UJg1VgANsP/Eaadafnq5PdilsNCuZHRCbqPftMTPBO7QxGK4c/bw2sxmSa/hRHwnLctmBg3AUpCM16KNTB6I9Gt8gIVNH8JYKy6/QOVE2YV1XJLqo8Jx+nQU9+VGmdOffFkymXFCAgrcutcGR2I+15hVlY0bDHk7sOhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717279523; c=relaxed/simple;
	bh=kcmE8yjKmHdUsG1ilN4PRTEWkuVD3M9DlEevViZ/EWc=;
	h=To:Subject:From:Message-Id:Date; b=Yl6G3Znb5XkbyDhrteb6l335c5ELcOo+p784degnx9z6SU/lWgE5ob6nwLdPVuIElSGItURxc7wZGAROLHaRRKJBVhiprSlldaJk6zzzK0RRHoWBHQMTot+MCT8nezC69YLAlJjfxVgzkZoz1mhZc+riUnfLXdB8tX4xHsF7ncQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYhEYuko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYhEYuko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED880C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 22:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717279523;
	bh=kcmE8yjKmHdUsG1ilN4PRTEWkuVD3M9DlEevViZ/EWc=;
	h=To:Subject:From:Date:From;
	b=IYhEYukorhv6xp18PUddGyodu5ot1cDqnn2yTiK5WL1vkqmrpk44Pz0o98Um50+l4
	 4ImpjqMk9c6k0qMevxRAEGyY9YyKf0Avo1nV0KEQfy84bBfQcuAsfW8DUOZDgqpbL/
	 Sm+0sb1Kwj6X6kSrw83pNQ9Mbz+/ac5C0SiIxjx4b2TAlXM2YY0uGeM0bLDfz92hln
	 ITLbEytOJCvE2jlfGF1P4wy/TM2RN3kPcCIIDr1WUdSfY3YxyLSDj+nrrRxj20D25P
	 0AN+Y/LH4et4eposBxCfRYV9NM9MC92JYw2G49N/V+xIUY50n8lNnKs1r6i0vMQgWT
	 Hvrh9qLn5RFtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2A40C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 22:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171727952282.23785.14304034905563757721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe8e30bfdbb9940e835856b9d2806db89a20b9442782c23822da5a40d35e69d1
Date: Sat, 01 Jun 2024 22:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717279522
