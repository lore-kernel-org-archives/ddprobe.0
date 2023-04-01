Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC1B2CA4
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 17:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B909C433EF
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 17:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680370506;
	bh=Lr+dc4OqUpsTL3rsjKmP5GQzyp3aA+u9aRJUKpt3iZ0=;
	h=To:Subject:From:Date:From;
	b=qrF7eVtFgCaMl5bjAfQnZOGx1HDjtZbj7bvL17vqLPW5wRI0OpOG2QJYjJnTp/T8Z
	 /lvRsrReOWiHsPNEzY3CB11FAbOxuS4IjnwVDOKvtenx0bwgUodjFdOUjgUKTYw/W1
	 uHONovW3XNKkThhcG9+VS/CyhsVK+XEp0+d39euF2GGgm51u1nUVtMT7fPPnUsyfmJ
	 QHS42yoAdCKcSGOO+hU1td3BHwLX1p+rwysoRE9FwOhHTSkcxWv/7V7WMFDaEWhx7G
	 D8ZjyqTVpwzD4Y1lkfx8ssUMIFmL4KOkrMo1DSNvSWa5dKe42VM3uwuOlDolclL8H6
	 WzHptDc7TyG9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD83BC6FD1D
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 17:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168037050587.29462.15571370758173453920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69707ebe67c4655dc8c81360a28e3991224c9c9741a5c40880eafaffe1aacccf
Date: Sat, 01 Apr 2023 17:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680370505
