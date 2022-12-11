Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78782912
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E9B0C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670785887;
	bh=ORKqOkNYCCcCO6iAbCKb1rNN5xbd+YYYj+WNQ5mjeww=;
	h=To:Subject:From:Date:From;
	b=hyPgItxtXNAe/A3kDUmzYXIvpUThsWr42JwI5JN061/37xEXLi3Zw4/rQLFjsGyrd
	 yFAz5iVMTBHw7Cl+hxGIs7Ync/fJsjJfnyMHqr0eEyAbGEnfZ2b/LjJVv2/ZFyoe3O
	 BbRsmTtDQ2IU1lh11gUBOx9zajkaxe+GdOWRvDxjFzDAix2zdSpa2piH0HRsl/sLvJ
	 /XOQbv9I3wx3YGSj9qVqgKMLpsJyS8n8IqPVdhE0UbQdpYqjcPtR6Od1KHH6jhU1T1
	 1NnZCgNWYyZtq9JsXB8m1ho84uvxPMt9NSEOKuN/0M4YA24OslUZ26KHLuvqaH+YXf
	 7ciDV2BA8uUXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A0EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167078588739.4682.7661556321523050986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b8aaf60392a5950f2c27e068ebf66ab7040b8328a5f13b50f2c1fc5ee5dab5
Date: Sun, 11 Dec 2022 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670785887
