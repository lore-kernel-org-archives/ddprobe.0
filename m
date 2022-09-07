Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B80B82F42
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E3ABC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662580853;
	bh=9EXJj9jH7Ywh45uf5jOet2Xj+QsKJGc/LyaNiiy3beg=;
	h=To:Subject:From:Date:From;
	b=aeGWZCNXfb0O8qDGZv3KiXSJHLRym0iJm+BsQHiVQpjPJ35CjuPSknzUgixKZhdHP
	 cXxkyEIljAHWdTWAZj7V11hep1yaOk6uCVj/BlXRFdf2PiaRyvVcagkM7T+h0vgL4A
	 VZiteY7UYoNeJ1Z3aEKzRQMQms4EiJGIOMRlR3VHjrLOg5TwQFmpubNWPGysIP5ie5
	 NO2vU5NFaQSiXUae1in3ucx0s63Z7LXzBBeMtTJ8YSWwjH2ZAVwOkIsCzERJlzsjvt
	 iyKdeUiHouGayaoRxoMqTwYEyPDE+EqVizH6dNv+R0s+adajUzC3m30JUFdX9elIms
	 gcmguQHSIF+XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 570E7C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166258085334.26356.1077777775866404087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58eaa203df54e1fb494a826989ba43517f09ead8973cd12e7df59c30c8f967aa
Date: Wed, 07 Sep 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662580853
