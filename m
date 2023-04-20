Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338718C15
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 15:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADDBC433D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 15:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682005025;
	bh=6t3RjG/vBL3rib/cwcvwWFNRPmW2Oh08oarSw8vsdUk=;
	h=To:Subject:From:Date:From;
	b=vFdOrhObE8g4AAwUBEjScw9IsY6gx/ir5NCsthHDYs1xwSUzK5jMkungi8Js8P+iD
	 5QCrlmfBodXdAzClzNXXnK3EjNCvSOhzW2K+TMv/G8TzS+r/4iA5Zo5qXg79qBs8Ml
	 gq7movPSfs5o/mu7hr/MktAwVRfbpv76o7xZGGfvkp+XLqLN1BfgMsYTprg/0uPzLr
	 cMZyWskXjt5ZXBgQ5mIe5e2Ml6DGDixYVY4NccPHiWKxGtRYijeDna5HDocSHZnNhb
	 PYhRLifIWvX+Sh9ZBKMGp9yRns0qP+Aqht/z+xMn4wyVMyrZNAAYwPtPOsYe30ULsa
	 YkR1aSw32nQmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEFD8C77B72
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 15:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168200502577.24491.14411839657660750859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7b19ee769e5cbe28ef9e688a15f6f2a82d57ac87e3f09796ad55e78f39dfba
Date: Thu, 20 Apr 2023 15:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682005025
