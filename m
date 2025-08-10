Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1842D21C190
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754807994; cv=none; b=PMUpt9NirHz+lYp61pAWcZfA4U8kg4+fA7cyv5ILdLBxtysC3Kwb/rzkKC1YeRbpkfmk+ohbdbdrTSZ6YM+o/yTfP7fVK8dOPn5OSyyPGINdTnFsgcfWehwmSbBJPct60ZM5pzDTGzDDpu7cFMujdJbWihVIlrJsI2Jy/wO+TBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754807994; c=relaxed/simple;
	bh=APmYGb5Yki41Hyf7oFrX1CAXa4KC5Epg9zDSN+h2zd0=;
	h=To:Subject:From:Message-Id:Date; b=hYriM6MWKPTbcJkmbaCI0lmlat1P0Mq2FHoF0QDgD85YtCljN11tFnKrWrnPJys2revsn16azv4Qw72d/KiqDKIYmj2ajjsWRU+RDRVYRDmILjkQkqe4Y/At3mWd8KY6xuAJTDUUF6ZmJ8MgbJSSZJZAd0+w39JavVtq6lHceMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jq1jq7bA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jq1jq7bA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A06C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754807993;
	bh=APmYGb5Yki41Hyf7oFrX1CAXa4KC5Epg9zDSN+h2zd0=;
	h=To:Subject:From:Date:From;
	b=Jq1jq7bAF6wH3kkmNXtj6EabGUX3W7K9Exl7mh+m5jkcajS6nCmV3ccP73wSDwYPt
	 m6STtO1Nc/0iWCKHKjwUcT+Q8IYy/+wsJIw/9QNhsh8+ebbqGjJPgjYHIOAmftFQAz
	 L/JQ/sx2iNjpENxNtZshkgWbPUE8Sr3u7vJVY6PcKn8iM5h35GxJAGc3w1F9i509ly
	 is74eibXJ2gZfg3lmvkPXtGLZh7NDvywsItt8SlCZaRkFRqnO7yphCGxJwiOQYqL/I
	 6E0ceF9mWXFjNnvuL4bm+3DQwPSAZSJ5J7YGje4AzdRqi6KHOayTNynQFnCPXaBGIa
	 bUqShyixU53EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5E2C87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175480799357.28208.9520386807730095962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c92eee00c547651cdf8af186a6873cee80a990146741ab8b6e3a7bc3e970307
Date: Sun, 10 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754807993
