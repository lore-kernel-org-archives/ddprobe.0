Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCB467D61
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D56EC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662161453;
	bh=zK2HAkxtsyH5QOVk0HhGIvgHf3t3v2PGV1C+p5lpRJk=;
	h=To:Subject:From:Date:From;
	b=BCANNH28uIhBaKzsJeIAYofQCbhgQ4s/ybADpl9qf5bxohzXpT2zuYdU9+7O8iHne
	 whsnb0N/SJQqFAFMUBdatywbGFZYk6RbG8cF4w7J41+V4iNsL6esQjv+SebNgirG80
	 9bRes6ZLoJOGqcNdRV3+GFC4tb927Xtrw3HLlFujXvzmfjDy7N8lTSU6UqThIJnYvV
	 rQ3jn3ETi0KcflKO3HLbv1s04Mar5fB5sZLSHgAlPPRI0Y8TYWuOjOBhy+IFUF1dsN
	 tyX8Q+qps5rD1pPfdIG9yHdkRt/bP2eSzmb0v7DNerrXrNdVRLldwF4Ys5z+QmjYMD
	 WzbnJW4Tn6Z4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56192C54EE9
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166216145334.15827.11647510943457276013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bfb9a39a3b981910a59246be206ef299386685b3b01c58b9d935937dc426a69
Date: Fri, 02 Sep 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662161453
