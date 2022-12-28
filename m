Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C510CA47
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82366C433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672199487;
	bh=KJevtg7pZm/Wrbi/bgwZJwRmPhpxtCeM4bG5dH6E1HQ=;
	h=To:Subject:From:Date:From;
	b=iYuQ+TeN5Jlv9Rw9Iwmz7uNjX7YJsMFgseGAentK/mbdFZNkCCHUZJk8XTRpP+zjK
	 pXfBMh/tsR/6vHoSHha6fTK8RQfaawHjSN4wEiqbJw1SNB29LmVkC72Dmw/fxPbL7B
	 eg6fsqvPYRJSB5r9YS8IXd2kEiSybfTVyGpQA5RHfjrptAp0vdQHDPGpS+9k3XsQtQ
	 avdaB72Yhj7Q2GaB1ysGNDFQfqXSsxMEHNYwM5rMVgriZoov7xLWMRlU5QF8GCNZuw
	 WzzhEswe4I4rx8dlOMBPbNtHur0jLY99DzzYNuoexeY0dTpQuWbYULAqxTtjhvc1R3
	 Qpxsebp3/gWZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B3A4C3DA7A
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167219948743.11457.13040977478993157031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7386b17e2abf666401d497805c2755a354a54d6c04ffa6370b83e6368c4998f
Date: Wed, 28 Dec 2022 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672199487
