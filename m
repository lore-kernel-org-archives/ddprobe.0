Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7153DD523
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 20:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA852C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 20:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695587108;
	bh=mRJcIlc2fr6+a8Ku7dGB9eWHzQrmqbGX82v+haBdhbg=;
	h=To:Subject:From:Date:From;
	b=U+YRi2BTgDDNyBYgBfyCGc0c1DGMJ1vkF2FLyScSE+UnVq7L5Mr+nqEDCL/A4/5yl
	 ZJ5+JpMX3uaZHCweNkJJStRCRL8ajohUy1/WpP9ijCQ3qdh2MV6CwjWw99/uDsoBHH
	 3ig9cmUpXYRwNNxuqEIdMh5R1EveXCuDunQWWPNacwllnQUF5KCKwCpfo+ejWI1x0C
	 84DrqBYZuSS/0uuqWNYJKyrIrfk38itW1nSYeI4Nv8g8lrMTHK8TFELiiS4z96o/Ji
	 25fXhdrTIv0yhZcxN0UyfbhNo+cTc8l5rnNuXHxg6day3Q5dId0AFv/yQyixw8ix7V
	 5EM5jQdBur2Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A76A8CE7A8C
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 20:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169558710867.30336.2970698140947391725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f708ae13b1a1bf2cbb0f0fe5242ddd5bddd007b5d1653284492e19535968ff
Date: Sun, 24 Sep 2023 20:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695587108
