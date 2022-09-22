Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D7323AD
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F073C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663830053;
	bh=i23y8/RvRe8ikH4pjZtriReByiNE/kHxk5XZuGt64hQ=;
	h=To:Subject:From:Date:From;
	b=XCMo8MphEhccxwi0B8p7BhjnVrwcoNnH3F+n8PiPer1gkbdcO9o7te/8jJ4b2S/Y6
	 km0hJ3O54QhWkNBe0rGFA0Fs2mDwtINfRf5EcMF6opdmvRWXXLvzQ3nh5r4chYKYHf
	 U5ih8bvMPN1Sv7jVoSmOuJMcihA62KrfSP3xK00qu9R2wTmN9ctkaK+N0eAl9n+ZIo
	 eOLZwNJhSHCQbnR8Vz9Y4qsNfwA1rCyj9QtJEMlimS0V57FQW9lSn0IwzA8ChJC3IC
	 LN2P4bSbetBg/KkVvvt69SkvhNjIb7FGjjPjkXTXWFNc9/cCDEhHDGJqJY3yDyo0Y2
	 rWK39Ds3AjMzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62050C6FA82
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166383005339.26502.1727067648041459092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 468d4660b3c3d16d3c66930669d98389ef6bf349a85a4485a1710f66e5cba63f
Date: Thu, 22 Sep 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663830053
