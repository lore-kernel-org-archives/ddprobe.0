Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243DDFBE5
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9z93I1x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B013C433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704202096;
	bh=uKYe3OPLYz2joV8StCPthe4TT/bDogyaR75T7QErt/c=;
	h=To:Subject:From:Date:From;
	b=R9z93I1xMLhVC2Im6ohHYL1wJdIhpXnGC4PveyjVJJpaTalLH0DSzDcvo/oYf+l6e
	 mI9T7eDdS7NsF8Z7s79Jcj1+pxAiNYedQqiqep3IDweSX+ZOn8RChIiIjxnrQvSGul
	 cXirPnhK8/3ev4BsYNhD51YZ+kW7km5iTlqA5RBoLQ56fHODHl2nSUER9LJyOPlAw2
	 7nOQFm0WjYJH3s+ablZoYUbJ60K+qbDbRjuYC6J9+kkG2amkVkmNeiwHugQFr5e5ez
	 Od2N25ndUPCxwjwRh8spOV5Qox7eE4xeqiVF/5gSP5lQngvT5t1+H/sGefAVRWC/BO
	 DGhE0k8fZix1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71E94C46CD2
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170420209641.3642.1187448457504912144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b616595c5135c88cdc6da36d2f9babb174793139b588e598d43f25281900486f
Date: Tue, 02 Jan 2024 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704202096
