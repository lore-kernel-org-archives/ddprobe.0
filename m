Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072B338E
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGteaXq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75882C433C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702514896;
	bh=oynm1SsXHmzFiUCzjTjz36oNzr9n3nOJPDEyhchImwM=;
	h=To:Subject:From:Date:From;
	b=qGteaXq6I4GWhQyp+9NwphYVhDFF7nDl5oLB9u9J0miY7zrPYRfsE2qm2J4O/qlFk
	 VZ6ADKzKhLWExMjL8933yoho/SxWbVvUeU2Q+OIU0EwSnag/Ck9WDQzFWfLj+nUmSH
	 MOvJ5KXPFSDHwZPQbKj/YuMFx7gwHtH1jq4mibqya+NA1Q0y6eAbw4441P08ZMrxiB
	 wjSXng8EXfnxLqc/vbRudWTJYCTgyS+0TUz9mx5pwoPOWqNq1G29wNc+xiijZfpLfm
	 jesA8/C1/OllY5t7BSws/j0q10ThcG49Cj7p1J7y2kj8e5Ng9Yrw2ipbzLcrn6WsqV
	 gyv6zp9DYzduw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E690C4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170251489638.26480.7146566903375780144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e9fb6ce7f48fa06eeb62905540643af60a95b7659955f1a98883acfb9fc8f25
Date: Thu, 14 Dec 2023 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702514896
