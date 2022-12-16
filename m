Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E06E18490
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D549C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671221487;
	bh=9d2g9zMuDcYLfZ0jbirpAdKIbjCIazE6qHwp/9IRADg=;
	h=To:Subject:From:Date:From;
	b=Ui2HXRZn44ShN3Nc59BhghenHJblJdVN7xvVbowyWHLRzcETu+uL/83F3XhexgQiZ
	 Z8KKE5FMUfos7DsWgT4RuwVac9KMH5Uznf1FJLM6flBefykgCanGMsexdNoaX09VlT
	 IwFweo1Q11/KtPXIeAjxG/+MgEEPnty/nUdWLLq5FbvCIJ92DaLiYj5sh0l+2aFDZJ
	 YzDmPVMts+S06y9cJhwPqrH3R5HBABZckAs4zSUg49c4HBzUek9IaPiPvctv4ifoRM
	 PeU+A7GHyyp5UqlaOv0/a48+nEEtQWHrynqqeglMRWvSfrgK0+i8easfxR4mT+CoK4
	 wrm7wEuxjX1LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 733F8C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167122148746.17230.10320483314860631031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e5697132bda74ee5f03f6a9440a025a20057b1091c6ffdae56edc8b21127523
Date: Fri, 16 Dec 2022 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671221487
