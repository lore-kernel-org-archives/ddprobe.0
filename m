Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6A429CEF
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724622954; cv=none; b=cILYqJRwDjfZLbyMlpyXWCbhYegFhVTho0aFMgcvOr74M9p6SXxKMX6NP6NeMIkynMx+RxnjC+EoQhegAFyW7AXU3j+K96+Aq3wD0Idk1PPWw1baOV2OtU67kzPEA9/gKdjo4bOtzYtZUbaT/P0KQxrpNPjNHqQ1DoJz+dQIm2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724622954; c=relaxed/simple;
	bh=BV0+W5bhSPSgbVSHHPzE5wlWM1x4QTsyZ+TJDe9Zdfg=;
	h=To:Subject:From:Message-Id:Date; b=aLnLba0wInh0PmHb8YGCyYOHLUsSfqDHcNHgwqVdiqvyhzSMnN57+g0o7c5jxC4Y7gFGODDr3s3MbgTb1rah556/hmWsEudQ9uxsZw7+Ubc9U/2PiNDWD2uvL2lJ7oBnWlOZba1ucQWHG60ut6L0OEh+H5uAUyqdfW5+tQN5bzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQBpjPad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQBpjPad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE75FC32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724622953;
	bh=BV0+W5bhSPSgbVSHHPzE5wlWM1x4QTsyZ+TJDe9Zdfg=;
	h=To:Subject:From:Date:From;
	b=dQBpjPadt4qc9NpnaES6h2bycNFe1/zLXBCwx7JgMdEPRCaoKLa1sXL6Eh2aS9Qme
	 mWexcRdZRzXQwhtAvjzu9T6VkXT0Wqmsh7kXeHRNKza3brmZ2xnhfuLJxjUIUWB4Ll
	 QOwYOk9s1+YxJQiSVvmcaHsXbTmFRvxtEqIAXBe5Oh4d+rYgofRdakXEBhGicivHnq
	 4Etwv0lWcvAvL1T6xdzrTfLV36NYmWzjJP4GLjmOHZcTKKY1kP185rlxXZmX/wPJU7
	 OwQ/y04hyOBsKUuwdZktg8QvjDbPP0EEvvNB35Vts1qXGXzex+uneUve/exmo63Dgy
	 Q7KlXvaeFyhhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EEFC5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172462295360.21768.18434277917733069862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 643c3420e855eb9ca5813185d15deb15595dfc011fbc2e041913308c528f458a
Date: Sun, 25 Aug 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724622953
