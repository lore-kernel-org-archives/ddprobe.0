Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBCBC8E6
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771510494; cv=none; b=nU4paLPL3nLEe7Ssmbyuzr7pNHYv31Z1vupctAxPiXh6QMROgbepxvJVHjutoXAaWpH3dKhLk1ZO0rY4d0egg1YuvH09E8N/sKxJ+uIQtYjOJn7rHUjLCQqGAOeSJ44NzfFYG+4szdd1m+jd+oZZr5HtvvtFbCFGnv/Z0viE2ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771510494; c=relaxed/simple;
	bh=AzRP87dObbROpRp0i5MhIalVVrszo0AxMkJcqLyoFaA=;
	h=To:Subject:From:Message-Id:Date; b=CK+6QZTGy4bc9iawbPBtEKMmGAaVc1qDYkEec4q/31XKcNk35DtgqQqHGZk/a3jQbsoWpP3OAo+gCzCo7Nu1JEvZgxNO3JKGTsz6buppzRkoVqTwRpu7aEymeoSDg/nNHq5ctGzkmpd5Ux03D4tNwvJYOE77emd99raFdp3R+NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxjTmnAw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxjTmnAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5D3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771510493;
	bh=AzRP87dObbROpRp0i5MhIalVVrszo0AxMkJcqLyoFaA=;
	h=To:Subject:From:Date:From;
	b=BxjTmnAwXQkuJOoTsVN4LPTm/2/VJLk3G7SKHL/nqyWYUKhZY56d5bW9eXxHE306U
	 xXqpaNYbFwI3xdDNDmaX7+Q+2iX6/3w8Rr2WWcKqlVSsKOkqoh4O8OZF5R0bYFkCGg
	 VQUtWk93/BhWNjHiffWGb6sNPcijg41FY2DexFcB//mX5AyACpe9epb7LGEUvolnvH
	 IMwadkh3bHOOwNbE/VmcmsK8AkLO70lW0+zOLdQbYRsLDn0+DvOVgIqRRh8k5UQktZ
	 Q3n9XQ0r5Y+nle0slufqMlOcR2gFdFhJk7S0Fn4jG1M1NUqfmOa+yJKmMQpC6/JjPn
	 dI8yjeJJlLtHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97ADBE9A04A
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177151049360.6348.3973713836790825240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a5f3cce4ef07512148d01cf8d8243478795dbe430dc29b2acc6036a402720c
Date: Thu, 19 Feb 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771510493
