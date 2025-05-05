Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF634C6E
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746416994; cv=none; b=RJd87bmGeb704sQxN6Fl0tt2xLtoffVx/PhVLUVwVGrxsxcMaPv0qx0bvefnYH4o0JncGRuc4+tFmHSbFHbqdy0kX43CStjle26wwq7G8fdD8HzAXb7azIhcFfvEwEToXhfseNADazTDY6Twj1WCHjJBSFmRYIWsgLJIqpAyo7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746416994; c=relaxed/simple;
	bh=Ge0NkqZBx/kYJpdj4G3V2AO6hGF/2w2jQmg40tvCXAw=;
	h=To:Subject:From:Message-Id:Date; b=fiGZDh84eIsGYZkJggnO6ynNeL/VzAch8rLcjXUznudou3VDv98WebwzTtaE90M/z5I5dlPWYoMZuTiHUoCpqGofOFl8hR60/mLa9fy8v63nBfLHr/wTl2RcSQrI9Ig9MWUo4D1XpSr9JHFVFaDOkwBu2NLuuQpkLjMcvatpqik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3kE6cWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3kE6cWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09CCC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746416993;
	bh=Ge0NkqZBx/kYJpdj4G3V2AO6hGF/2w2jQmg40tvCXAw=;
	h=To:Subject:From:Date:From;
	b=Z3kE6cWSeL2NwQjhh6Mhoo4vM9p1/yaeu87ba+T2PA+cu5iQ+TATk7eS5QDlzvaoE
	 AzEiaqUvVqAaB0AgUwYKHFqeMoWPgXe0LuNdCSHfV1BifFHef/y3oxYoXKLvpzNTwt
	 6WMnZbdqiKPxBXcG8B9RRPMHzF95rC2I/5UlaqWA1zkqVyMDUyaSjIrYSM7Fvi7gX+
	 k08ERgs4N+r8QhULYeHA2rM0iy1PlQKDHFqPxqv/7tcXNzcdt8xfHILvDsig3mo23h
	 x8m6eg6J4Kzj98VRzwoEaJ3JdW7NiooNu+iRAlDmi8AuBZCMvVxiUagZ0ySI4YrFMl
	 qgadfzcZ/Gu3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE5EC369C2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174641699357.21815.15140375570696644654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e21437ea7ac2f3f3ae43345e28288fed20ff437e723933f9bad69b566cbbded
Date: Mon, 05 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746416993
