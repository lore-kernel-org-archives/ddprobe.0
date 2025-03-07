Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F23823BCFF
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 16:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741364934; cv=none; b=Y4FtSeEkwGIkPyRaQOMMZsUanRigXl6yGz6bxql0PxdRVyIJdu5wvkVvIO4NsEpwZaSA3jsjkHT0CZRrukKlLZpuX7aDIBFe7Ym/OtGKGCvrNhdzy259izg6y6D67pY4EHBXfAQybCbQzr457g9SscdQ/YlzUnq/i//k+GtDvdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741364934; c=relaxed/simple;
	bh=Zuaj5hegg8oWP38+nYr3rZVxHGOzh2hmbp3v0wC4GH8=;
	h=To:Subject:From:Message-Id:Date; b=g5b2kxBRNMcvxKXoZCzSRqdTuH6lRMPAtdIaHtI+DanAyHlu6NrYIbs/Wg+EoNciKE3Pax9omx3aRuf+rHHQJPVx/RxLsXvBPscAJWcIy1uxopBQn/nYSDsFukbJy1oqAOvbnbY2/l6MFBWuVNtxfPPG4REUKbLmZNZ5dgJvA2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHl4NVlP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHl4NVlP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5C4C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 16:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741364933;
	bh=Zuaj5hegg8oWP38+nYr3rZVxHGOzh2hmbp3v0wC4GH8=;
	h=To:Subject:From:Date:From;
	b=PHl4NVlPL39fCS3oJOjQQ8ImtpBRLKT6C8o1lbZnkkhdwDNlbIqoTXSA+y8qhtwOg
	 IS5ZBT7axclIdTYxgWMyBHcd1T5U0pP6VTuORltv75aTLjajQ5AyL3CAlJRGt3BBHb
	 nFlT7MvkQeWwaCKAVQ5ZtWTR6xSlG12+JHiE4MgIA36B9FhMD9SbX0RuceuonRuDzV
	 yajCV1fCuvgur0NABPDnHUTPDL+3sePMeAOa0MMVSFZGCvxn/Hgub1kWTf/nnrI1bz
	 pWUiRufb4HvVYAG6EiXqCM9zggV3lU1c7eSGdv0NYqa0Pr69GX3bEVvmTw6hZCQq7n
	 gxc91xD9mXl5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E528C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 16:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174136493363.957.367047600882776905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23bddc8abd14990f9412262580ca840afa40073864bc40f00188a5e7c31e0521
Date: Fri, 07 Mar 2025 16:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741364933
