Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60122408CF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 20:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0426C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 20:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686341885;
	bh=UE/QgLRAOcwPhllR2u4YT7DtWTRy/PmRsE6aDJh3qV4=;
	h=To:Subject:From:Date:From;
	b=mRjL6MsQvMiS66EmGYdeaQ7zQX2QlwZmQyujwekl+ygpYQD/zQI2Ww/ccHqVEMTaz
	 6C/d5ww0ZKIX+tu02aR+JkYBiKsAeyXwcYCXjzO32mPXJEZwaShmwIaMzFEhWDluvc
	 2WRSQF93WMv6B+DSvT93xHvlzNJ26zFUnwNqbqOsOgyPbzxIgqeCpr31c1LL46PvJm
	 1I/wx9zZUhnXnqzgUDbuM1s/HotdgdVKlpw/6rv37tHd2CGnVO6J6+7puNO5giSsUo
	 z5nUpYbkXYs6HjRAQ+I0ZFXMriPhnWV3SC5eCt7JQV/nD/TWjkpVjC1pOZEhY+S9WM
	 1/Ac8hrnwRuUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E52C7EE2E
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 20:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168634188574.27014.7965205031262783958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0663315b4f99adac968c5d72ae42fe0610b99ad234ad55f96a92e51e7ec334
Date: Fri, 09 Jun 2023 20:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686341885
