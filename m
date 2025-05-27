Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39862213E89
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748388594; cv=none; b=dFeHpsOsN9RPkYd2x0JAHr1qZNmbZLr6R6grzL3jDT1KiWYF5OhAZ0u5vrQLiEFFr+4Etm7KcV2EMKPZwWaYjviAUm1MHFLsVgL1qAcJv7u56vyESP8xhZnI7dKRefU3tnlDEFuLgRsT+MGYIUMdKKwK3cA4DYVNrmym1HQsp9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748388594; c=relaxed/simple;
	bh=pWIvo4QJRoZcuUXG7Y+bHVd5Mh572HvWbsph7dQzsmA=;
	h=To:Subject:From:Message-Id:Date; b=k13JQbU4NfkTKjFAtbzHglT0WmC7jJKLYlrjTyM02584Nq2PNaGL3DLPcYRWFaMX8AZf1VzB40NS61538YBRKNIuZ9HCNLDuj4ejXUGC+G1Beg7Lhz0VDxRRVKLGvqpxQpmqq6r9dhGaMFufhrwBl3h3NJKadayNlIyCEOqwv30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJ+xC2KI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJ+xC2KI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1989C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748388593;
	bh=pWIvo4QJRoZcuUXG7Y+bHVd5Mh572HvWbsph7dQzsmA=;
	h=To:Subject:From:Date:From;
	b=KJ+xC2KIkEtJMPnUAhX51ocGU7mmt/vBUWZLLs0ypmhiaRhZ3WKZzuEACBFHr5Sq5
	 mpHN3CayZEhTORzY7AnYaRNa8wM61RkF+NKixoVxL8nbiNN3LhuqeH1999H5kguMmQ
	 Z4GKwK2W4DKWqjaJE/H48wJ38Xw/Js6vjqhaqtM5TJnIyRj+IdpiWBIDehC+QlS2ek
	 WvVWk9LOvhAnD2c8TEG8ztWGxh2VM8xqGfgAJsW+5yYakC2KhXxEfDuJT9evgz9My9
	 gja00BRK2Y0n/64yWUlFkqxBuxTuRxlQxr2UmOqm5tFyhEkUJzCbrVWqmqtvB7TKpq
	 3eJ7dsbIMtugw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91801C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174838859358.2057.15560712039516351615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99914e55461a0e5b31aa95551ba103fbf4f9cf6db89e61b114135999cec87ef8
Date: Tue, 27 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748388593
