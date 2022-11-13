Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA080EA0
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 02:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C7C1C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668306054;
	bh=PtzmQ7/EQpdzeUZlQqI6HqIs+m79tw2luCQjk11V9r0=;
	h=To:Subject:From:Date:From;
	b=AGNrl8wS91WOgXoX7uVXW8XuUKcP/KOXF7hiu1YK5gEBY9VQiR7DNTQIbRFll+DJ6
	 mQUUGxvWZXhrnXOz6qo6lm6SOSf2QgyxzK9go21BUaRGkNGJaoR5bHGHat/i6hP7CD
	 SMAmYWtckIwc4h6YRAVtQRbwamTC3mA3k0iDtBweGZSW8h3gFaiAYCs6LfjUR4pAcG
	 M/q+DCWN0uRelGd3TE/WPqkInU7bc7Tnjgd9acjxtDtmnG3fj8aMHgDJEW9XHVkZ0T
	 Fvx4Zi+jA9ER79Jxlzho44sEI0v3Na2OVMq/ZlY57dD1UnN/6mORls7MKL/ZckcN7N
	 nXEq9CxBm7yYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E1F2C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 02:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166830605436.14466.9517675925159592307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9dc4ba9726bd4cd2e5dee6a2c6879581ccc9123b3d9f39ce37d5a602a20c8e7
Date: Sun, 13 Nov 2022 02:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668306054
