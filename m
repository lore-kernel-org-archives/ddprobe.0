Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B22EE620
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69FF1C433D7
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666573853;
	bh=pT5wl3ldWaKik1FhOEJjIb7QYbIwsk9PN+LDQCmX40o=;
	h=To:Subject:From:Date:From;
	b=gcRm0urs1LwJKhV0CcPtZoU7DZjqYWDOeTPDNxxVFrGI+VACnkvugxUwdI8BKkOQH
	 yeGmM29HU07Yf06ECkwmpgfmzVWc51uijRD+z6R8ev8/5MkD2Kt7jLLvDrE1frBdtH
	 tc36NqxoyyPdfeylH/xHE+IhLNYXulkFu1SCjEaXdnua4iFWlVQsL7Tuu+MqO9Afzm
	 IzOmtQsin3RqHmr7bRkIegzEoz8vX3WuZBShQIBN0JJPStmR7dDB+93xdPofHFKdmL
	 1FMK+q4su63ypMAPC4X3m+8SzcIu6AtqYeD1MXYzF4lM3Xi3bXNqMFodTaw14fgdmc
	 x9kiV+kD0Fagg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E68EC433FE
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166657385331.15615.17586548320386684434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 815ff328aef437b2ceedbb4f8d33ac4f14f5b8af022d485bd1acd2f0f8f5fc62
Date: Mon, 24 Oct 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666573853
