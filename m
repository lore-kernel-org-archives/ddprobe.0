Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6284401
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 17:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70993C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 17:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661535652;
	bh=CJH8rmYuhAclpdrv70OVtHiuz6jOWtpJb4x5RDYnZNw=;
	h=To:Subject:From:Date:From;
	b=t4JB9bKa7mHHCRcC8xUTZ10kPP3QSn4n0Gkbz/PScJ37QhrziYf8K9/IGGwEzX5me
	 epeQH8B9LI+km7PfT30JM2E/2uFx3ze3LY+n1FYp9jKu9eHPq02H9zQA9j3c4M5GPg
	 PORBHfiqJOZHAoruBlFQLRTi9ebnErtbUBT86g0kMXlia6EYctz1IzM7VZjUIdSveR
	 CIXCH24iw7bT6Kj5y0b2MLbopN837p5sjUiV6LxxPoLe/qpOAQ/qQxhBOQfDLwwfbv
	 ZuNrLK0KvBdmzXN0HCuQrgjuxzK7E4xhv3EwwZSzK+YGO4hPWPRMe7AE022trjfe+F
	 7ujhfP/tBz3qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E2FECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 17:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166153565234.6553.1820073905419904854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c513760dae6cdf49ff8120f7da76cdc62580203a02979237692eb458f66479d1
Date: Fri, 26 Aug 2022 17:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661535652
