Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A89A7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 00:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 006AEC433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 00:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674520386;
	bh=vxQi73XC4EPA3YLX1n6TWZj/Udcj64fQxJAtOLu1d4s=;
	h=To:Subject:From:Date:From;
	b=YjR37SBa5MkwUKELi0ioQp/oivcFtUL1SOMsfwR6sxtmKye5N48pXud9q0qIDLdt8
	 UH/S6uvFUypVDiF6i+XuJkn6pNaZJ6K6OuIsi00Q5yE+/mYcgcBjAo10NKpk9tDvfp
	 XAgNaFPx0QjOzTdUBNz04IESE9hv5+AwoSzriJKW7XVEU/tVLefMF8EED16EpWBih4
	 oLostJUcvZ5DUQHeb8XxNClOx5TUvI2/pyJWklD/12er1b8xa0eHzZ5T6nf4EaFmNh
	 MEyfCJ7tzOvaoo3+RKpXf5lEYrOK/jaEweoDpmd74vjMEEXZhvsE13Xyhjfx4iFQMH
	 OoF2g58H0blLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6E47C05027
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 00:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167452038586.27726.7796501867955585173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af136111fa104248b4f89e6c0c75ee03eae8c725c332e6c50c21a98d909c2358
Date: Tue, 24 Jan 2023 00:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674520385
