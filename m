Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34013362
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 02:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B0CC433EF
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 02:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682908085;
	bh=Q2kK9XvNpBB/6++iPZMNeDnXoyOzy+XHU46/LVVWM/Q=;
	h=To:Subject:From:Date:From;
	b=qH2FZA2dM7X/YvKPrUVqc5oTSTg2KArHAdEv6Uftaei2oUkDIKLsRa5uGloUIQQsJ
	 OMLbBlb45qpqwCwlGFGlaggnl4EbydofvedjDyhkKdUrS1mQronv4hLDx6++qWcsSi
	 Z6Dd4BvPn9ASpomsFC+XSbECKcAGmbNnsdBuxisKbmpCQoZqiOrG3cy7avxXxwALyW
	 z+HzCDJfY54sIWz40i0a/mi9GZk2hjQZERZHjBth1usBHgZcBoN/rXUx/4uwcBrc3Y
	 neuDSdZfS1Yef/sySovbTgy3Z+/mnbFmATVQFaT8JLBNUtbR4ftiytG+E8TXhYxTI4
	 qlFRYjbyhBZUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8140C77B73
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 02:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168290808574.13582.16283855984423283044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90fe6fdd06d9b7d70c44942c39ef0153decd42b6a3d961349457e76266a89409
Date: Mon, 01 May 2023 02:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682908085
