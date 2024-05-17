Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648D8C129
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 04:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715919743; cv=none; b=oF0z1THgNMkbN7rj519LuNY7GPeIvONAaiEXE8jPElhN3wi4dje5VsHJwVO2/hqoIehv0O2JSlxdEcgbi8WY1tA9tLWJVEVEeJCepmIItOVwql+FuxstV6lAvvBb0VqS3A+8oF8gksUa0Gbfck2S7yTNw+lWACLp78nTix7yFvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715919743; c=relaxed/simple;
	bh=I6WaOUqZdRv7HL4QkvxTU3L+wn8V96KlLh3BbHK9OTs=;
	h=To:Subject:From:Message-Id:Date; b=bMZFGVaWGfwCeMPqN9rPMmtiX2IT3HsGt8Xa/Tv+koQIwi4q1Lp9v2GA57Fxwgf1Oso49RIWIV49KAF3+V+3DURs9dgIFNrMohDmVUUeEFMQ/OqLCNUuh8eh/0jCEVZiuMkgZ34NPg8Ar0DUIjHhJ83TVrzLv8w6Jp1rR0CaE/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Al3Ru2dG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Al3Ru2dG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E548EC32782
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 04:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715919742;
	bh=I6WaOUqZdRv7HL4QkvxTU3L+wn8V96KlLh3BbHK9OTs=;
	h=To:Subject:From:Date:From;
	b=Al3Ru2dGGr6mKVb6F1mHav+/0NWjlJle7LPIbqxWGiQdBEq2eDfqMeJGbr+DVz9fT
	 3Hq2ybiFoxwXh1nAVg+7xXH7hFcFg4rDJJ1ZdCG6wKvs4NRkFoqANgtWbdmgeUMu97
	 DNsSqpGbN5kJ9x+r4wxNvc7AQ3IT1rnH2DjP1z06Oqy5SNKuJ4FW6XUtpxX57JVvdO
	 iP1oa5TGpJRw5PH2XmwynpVAqyus7wPgGxVVruHOBf+jUOMNn+Ox5996J6QNvlaNhK
	 vNWI1aGvQLdA/ISbXT+ti502qsqGkudKcoWCvyEEkO9RxLxCzMwCh9SSLjkHP3BIDI
	 seEers9Fiv/Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C74CAC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 04:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171591974278.4673.14080399319076753125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16c003ec42d94237e406669f6df943a451aa9e66826cf7415311fc1cb9ac27be
Date: Fri, 17 May 2024 04:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715919742
