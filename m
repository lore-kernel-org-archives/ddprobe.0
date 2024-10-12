Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF9C149C52
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728774954; cv=none; b=A6QSWKmhk4bptQEHqtmLoxmGFEj4rIZB0RqPK1GNci+7HU1eZYDMk1J1jFyjwGcBXgy506QQP6ke8ioYIbxfA2sxvf85mwFshxPreZhrFZyeO6NCIDXU9LH3qOyXW8i0V9O0FRP6JljCEe+iQ+ajYpU4eSg+B3MVaBY7bwbxgSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728774954; c=relaxed/simple;
	bh=HM4++/m9ftkZXrwCivPNGWt12/9rSTlOYGq64b8HUPA=;
	h=To:Subject:From:Message-Id:Date; b=aX0Ge6gFRWfWQGZxl+novEBUx5X9sH4QEYqKLl7Q0YfltGXu2MF1kUj0CCShHZhobkuh3DYCJiOVXkhfz2yBRvTHtvVjQmcrwBZ8/ZpoQHmTtBU7buWmCOLB0e7zHjlTWRGCJOcE8vG7NuSlZpyXWzYG92WIiIj5wuqqkLUzwBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mS287Q5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mS287Q5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2007C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728774953;
	bh=HM4++/m9ftkZXrwCivPNGWt12/9rSTlOYGq64b8HUPA=;
	h=To:Subject:From:Date:From;
	b=mS287Q5j/hdTuuY+fCqbkcJc9NvRQ6ZglxTTfnUXKpqk9exY+TCg3fbEgYsCwjqiL
	 svnb9xw7S0KB/4jIA1OFHzVHwWbnTxBle2aFyQaDlZXrzNR0qEc7P34NH5eLufZ+fa
	 ORRsWgQdXc4X/sy4yAGBARFYSVUPI+wEbQ9s7DCNTAIHW6pvhvAWyl49koW4OZME3e
	 W9u97xOObCYCQlXSfDo7RHgP6E7UtI0R1WBSahcSQq95VASX0FWdrOrXtX5LbYab6p
	 NwzstjmWEfzU0/mZZZ7jXtVryPEwHMUkOCTmT5ST+rqcS7OwQKfm9ExyA8uyhK6jw2
	 Uix1vM+DZSZ2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A12CF2586
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172877495359.16292.17465536193192124796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd9693a80f5139cb99845639ccec7c21374262dde5417283d42dc2eec743b39e
Date: Sat, 12 Oct 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728774953
