Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE8D621
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 00:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D14C433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 00:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679962385;
	bh=4fC4gNBl/PTYNFZm+8fAQmver9X2vI+4WfU8ZNohtcw=;
	h=To:Subject:From:Date:From;
	b=oUlq2CgaGSIcG19lvkmaDh7YYInU11hgLwbPnQN1g6TIAvbfPB9x+cXp8gTOIFvcc
	 iCdOxMoJaVi1S5dgxuihBPSDlvnIGZqd0oflLQVeKYOjo0kVNmNBEHZTj/gve54zR6
	 MIit4iON2f6L8Lp+zCYYkXD06jN7Kdj0H1aunzglHynkHDa+d76SBNA9T2LDOweZ/R
	 umQ1DF5njcD9pUd4UMKggFQvtrZ9fUj60I80jB391PpP8pvvDue9WkgVQVbC1Fd6Uu
	 BLQleF4UKymJcTY2HDA99g6gW1GMTpxehHtuPNyi2cyn7Nrl6xoOyWCOfL8aYa+0qd
	 sTxqJ1GcMTZQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26BEC761A6
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 00:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167996238572.32265.8390466528818920606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5958e6868dd3c414a026ba73390f1b048a1f9176e381cb317b271f70c661be72
Date: Tue, 28 Mar 2023 00:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679962385
