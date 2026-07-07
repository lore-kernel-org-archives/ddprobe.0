Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B71B284B37
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 09:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783415914; cv=none; b=dYLE1Yhx7mx7ZXQYU/Au7nep7/g2wfIa9afRDJiY/QO7HNoT74ZyABpcXQm3/WgMFeMpobbU03++3SU7NCNwtuTjtW7ST9CH93LoDK1QXBZkfNykbMpQVzb6bHmgkzUFF1GbDW6JMHDhtqh1XCQfMtoSz4sEoSu34gMiakaUUyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783415914; c=relaxed/simple;
	bh=eK9B6uerLRe21712Pzz2BAuAoLjEB8CS5qXQHGmq8aI=;
	h=To:Subject:From:Message-Id:Date; b=JG+YCXEc+1IsuRw+8SCwVRWTGM3SXZcsRNV3cAo9gOo0o/akYLgqqc0NUREkkbO3fRaFPMFZAWcy2xIYHCjNjvlFn5cdjVwiI9ujiHtkTMr1Xl/PrtXBUSEfB/4YhJRu8e8wBIZ17luSDn8nttH8+b+PPIhWy5hZiS3cuJy3we4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQJ1NB/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQJ1NB/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD37DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783415913;
	bh=eK9B6uerLRe21712Pzz2BAuAoLjEB8CS5qXQHGmq8aI=;
	h=To:Subject:From:Date:From;
	b=jQJ1NB/w13/26KKOSLa/ZZSAagNVX7iHzapj+QtKedkJCVeSxL59knB5ZI6Oxds0K
	 abkNZmF6GSecX3dGnmBKROzFiGENHCc6PGzWYbk5jLygjn8TwHv4nBWRZQAsQhOdsD
	 aYHx85cvwGeiXq32Q/mbqEPtcIrEe0PtIb5dNjs4pSnkZ/Wd1Nqkn3soDIOy/9KDhg
	 MO15TUXnpYSLeLE4JJ/mO5lkX3vpw6+Io4LIm9jZl52W1hGMFh48dH/0plXGeJzD9y
	 6gbDq57xPBUxNbKPqm+BnAFjOpxlKyWkiQ6j5Onx3chX0OefdYOzUP1Vc9oO8rqgZh
	 R3/+0rEb+0BEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7EACC43602
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178341591373.8632.477573600820712013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 691ea187f62225848b54094cb9080b72150e611e3e7d95edf14d7ed38f94748f
Date: Tue, 07 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783415913
