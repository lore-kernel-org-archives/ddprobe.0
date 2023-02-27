Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56360374
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 01:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAF23C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 01:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677459966;
	bh=RrLl++qz9bXoA4v7ZwuCvpOX4h9cwU3ekb8I3EbWrUo=;
	h=To:Subject:From:Date:From;
	b=P4HdwplzBHyW/grh6uomhuyN5Mseavoifquo2sVm6SpzZnEWtqdLfBXRlzRBE7NQe
	 9V2co+YWAc41uyBejBXE3o8jcZv31MXWZS3M1HuF0dNoqpIZhj68+K6Ue6ExLviqMx
	 +kktjROO9X0Fg8tgv3G6Uhj+JEcgIwa3CQF3H/WDuxY6lhCycdRk+B/QP/PjoYygAt
	 ii9p9Ap4WjMSM8PlMD4RXdnduU2tOKT9DMyich4eMpFO8uf1bz2/Kwb0nBYM+b6Qvu
	 gOgAV+ATmoWSkU032DhtTtbiKUkPDSgQnOp1vQkOVhsg0h9B1yhXoqzKbkuNAnQrLH
	 0vYQ1YLm07wIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB0C3C7EE23
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 01:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167745996578.19041.12309693169951067635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf1e44aa381f9f8bc99c4af7a4aef325a4280a63ae92d8dd1679453e6584eb0
Date: Mon, 27 Feb 2023 01:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677459965
