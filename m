Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F75C4404
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 07:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYwz+lSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF0EC433C8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 07:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697528228;
	bh=fA3wOP1MOCSdBDlfq3MvL0EhK58jnlx5IUGh6RHFSB4=;
	h=To:Subject:From:Date:From;
	b=AYwz+lSoB/mBMwZq5RUux28b6YzqIbLSRE4wqEsNiXGCT7cjRlNi8OuF23fS6xEH2
	 TWpbTP+7QcSgTDK+QOHQSu/cTs4cHArSUGkaBDK8A8v/R0ASZ9BX59NRbEhY1VzZNx
	 W74UjKSRCWKSFyhwurGdiqlaT2fELm69OYry3Iko673uGYELeqRbyyTqkS0NDstw8p
	 +mrxEyLuv7jFYv3XwNNidgTZudxnRJM/73wBLaOz/FBvR4dc/KY1U+FFx8oUUh8w2t
	 Hfm7TYD8T3WaVK4zy0AVw/pyoqFU3nh+93+GATTPdz9oYjmepwgz5eOpqTOpOQD1qL
	 5Yfe4KipciQdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDDECDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 07:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169752822869.27650.708408109430864118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a769445b33996a8e321eb028bf068ae233d460edaa40773c26874351ff925ccf
Date: Tue, 17 Oct 2023 07:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697528228
