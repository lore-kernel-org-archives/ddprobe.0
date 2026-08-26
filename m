Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DCF2E764D
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787779834; cv=none; b=CFMq5iMtoqyBSzs9VkHQ8hSwluZbdFoFbsEI+zndI5nRc84RvoC0YjY8UUvkIPlJpiImMJUdx78uWFkw/I67OPqDCqxqanf5fKGiMzfJQj2yHNw+o0dqavFDkBdbw5FTZc6Yz+e6TW3RjV2/IncwpScynCrRaqmnpwpcyPjErak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787779834; c=relaxed/simple;
	bh=Qz+pxD7Zresvx7A01sxu25aliPIFOWgcyJwv+c/tHfk=;
	h=To:Subject:From:Message-Id:Date; b=KV4uT2XajhDYLuoaY7AQHe/TzD/xU4phXYnXycWk2J0eRBXE5pdrtvWwnlhWxuPo6q0rRS76YVwj84swvNwyX1LRMXy8rZ321L6+k6G6Zjiz5fn0cPtvlnhB4TcQGVvlBePdqWTHyOIerbnmf8s52ArOUhVlrAlspgt3t/1F/rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTaWlaud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTaWlaud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF276C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787779833;
	bh=Qz+pxD7Zresvx7A01sxu25aliPIFOWgcyJwv+c/tHfk=;
	h=To:Subject:From:Date:From;
	b=NTaWlaudayourLdhaacueWWwrp+n3UMWXpjLikTnoO94OB599SqiawBZfi8tFUaYq
	 J93hJ+YzLp6KL0BhoDIqWYHa2K4Oy2IGcbGLQ+D84LK0Xg4pRw6GFlxrMU5nVbIwu5
	 6baIVnEvpqzvlhASw3aSXQJSkw+O6dqGXTVmBgYXfYFYxulia1Bv1o6N4mpuH7CMZQ
	 qFBVDXwsl+OOp07n1W08FqeZc+Vdtx/Vxzg7YSq7p9A9bHxz2Cjrw84WIYfiw+r7q8
	 KAXm086pqFZlpO/wFI6H07EfXeLPr4RCpGa91PYGOJdPOJQXtfQ/joMrT2+4rGIqpQ
	 /L6RvI9rW057A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6B1C61DBE
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178777983369.28938.12473052502354268788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 617dd822d6023bc7976510677a4ace5d04d03d70e74cde4a73c8d2e9f1a90a47
Date: Wed, 26 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787779833
