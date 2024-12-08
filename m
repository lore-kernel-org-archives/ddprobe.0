Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4C223CB
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733618754; cv=none; b=HISpViuLCKWe0XUcyv8hgCTRqnhd0qyAE7IfUMVrlEYDwHviXiUlp1OPpkkH+TzwqSYQ9OmJi0zxJSQI+MNL8LC/BocMiCHRF90gv0c/Fkz8yQfOqOOT1eOiKbR4sQ6XXzdT2UZ8/JF9pXoUqw2MxizL+lC2pBbK8J3csTzyDI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733618754; c=relaxed/simple;
	bh=YGMX/raQ7kJykflevDza+xBOd71Ciza4+/cv0I5btsg=;
	h=To:Subject:From:Message-Id:Date; b=a9ycHLQD/f56mR+uw21E8zQFJNuHIdeYi3jvN2LDQ67S/2cAHHywvlrvYIy+uSSDU02zeGn5kdDKUmmR5aMvHI/NX9CUq7bOJ3UALjrKHWE82Ln6pC6w5bGmm3JXWNmSCWl0fFPgauD9CuPkH3sTgPt5WzIYri+7rr1AV8nuVwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWgpRFYM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWgpRFYM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5EAC4CECD
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733618753;
	bh=YGMX/raQ7kJykflevDza+xBOd71Ciza4+/cv0I5btsg=;
	h=To:Subject:From:Date:From;
	b=OWgpRFYMdWp8Gh2TSSL1KwrtuBk4FNPmUPQ7RbL9AVm25qwEoUx9wyoiBsFdOwo6f
	 uS6hGzUPM9yebv35U+uYXbxt+tttLqNYizTSMj336suSpQ/wp72XIu97/T+dBhHoNr
	 FrtbSeGiOnmW5d2lSxulJJ1NMZy4caOWSgvtKZV0esfxOGROoXTVrLLRVNsOqloF8O
	 ddEIKfTbzHzaF7tme4IaBJ3mFD3gv6ubHmDMvGzUVc+qZQDlnCSoHMY1ferWhgXER+
	 husZ3u0eFB658fPii1MrBn8TwLY0Pl9gC1KVVpq+S9Bh+u4gk267P4CNUYBdf8uI2g
	 75He0r4qIbkzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AA4E7717D
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173361875358.7212.16637219835905216546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d491804420221fd904ca9b657c65941885cee1f75f14fa87db10c21235e347
Date: Sun, 08 Dec 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733618753
