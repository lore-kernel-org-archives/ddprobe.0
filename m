Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133BB13DDAA
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773234294; cv=none; b=WQbel4FkU5Pz5LHXpfihMf0JQIk8WJOovFP12EXA+PCNED5EfQtfd8DZKt4HORGyp010PuNrsWw7VvaZZokgj/MdYwaIz+3yoqjnLL41Sgw/3pWoKBZPGothJPSsYpRVdqOXDgllQaVB4DcF8/dszlmZ9yNp6J09QYq81MmwEbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773234294; c=relaxed/simple;
	bh=GkqvFuumNAFF4oTjMwyjg90ZUkpYMOkY+AT/D4hGrP4=;
	h=To:Subject:From:Message-Id:Date; b=T4+afrsWLYW/a5EXS8ytwbWqYYEARP4Lkb4WuZTDWLPe2O1mqOQO0stAd15vI5PMzoMkklb0DbdNxuLgeARUMmamUib47eAM40/Top+kOh8uXcee1yvLhB/bqoIOwNesGO68fIkscHdfDpMW1e4V+qxyosYNuDJ2kS5rfK7JeF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTFB2D4r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTFB2D4r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05F7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773234293;
	bh=GkqvFuumNAFF4oTjMwyjg90ZUkpYMOkY+AT/D4hGrP4=;
	h=To:Subject:From:Date:From;
	b=bTFB2D4rEOYFaTOShA6CLQs0zO83XsN8H6ootAZSbPe8G0t3GDd8vptbKNr8Pf3YS
	 /pqVmSKnDybUyL7x8cg8R6ceD9a9QZzX0Lsc/4c9C3l66i9MNSdFZZl3vVDp+92RLo
	 GaGK2tsZpHMfRU7CKZ4diV0LpzL97VVX6eelox/7UVx4os7hYF7Yl+sya8hmNUjUxs
	 3EgqHsQ4L2CD+OImtqWLzfZQ/S1rYxCCPdakzt0uffuvE1ShWPEeqa7KCmY1cvxbZp
	 3CEULnMLM3DzueSidAuvpbGytp6rwAk12FXLGXbAaogbxp3ky5ZXOjVFjLP8KtDXW1
	 H5V9yNyiPuvTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B071062896
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177323429360.19419.1181413678343879802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5ded9340a15b2c79e551248dcfec8665083e89f695c998a855334beec944904
Date: Wed, 11 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773234293
