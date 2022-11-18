Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8CDF3D78
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 741F8C43146
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668786054;
	bh=hKVH2MyYrJErQ2FjufmeWzxJX0njXqWqBSL7vBiqU+8=;
	h=To:Subject:From:Date:From;
	b=e0gnowAFqgX8CwNy2FU6s+KmVGztzBXbwJI1QmXkmnKzq6D4gVoKnSE4XL0O/pNXm
	 b+97xmwuNLLgYkj8tktOdD2PUbfajEd9LpsVEwnapCt/HugvxRuUrDARyZS6JV23sN
	 j1Bns0+8dQ47s/3kTivfxP4ivc6DxKsIy04hn/LS9yOnbMsOFuia6oXE7zGTCfULe5
	 36BSAoBLuy2qUCoFZ1P4xyZYZl/IZDuYCSPBQtaLJqTpEv40pNTFVT0QhPNMCmVSQ5
	 gCrXtJnn2yBX+S3uCNPgEhc1D7JhnP6dHo6JvQB+VC1GhjYoRMlkfx7xgpVgo2MTJU
	 ORNqHYejvxJwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AB14C4321E
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166878605436.26436.11630325614912278954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f52bb2d045b281691c99ff479da20e438575a0625e7626c4f0ad0139b734703a
Date: Fri, 18 Nov 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668786054
