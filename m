Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229F220F1
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZEg999D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D1AAC433C7
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698850096;
	bh=UAzxTQJ5RzesIRgXEo37ziE7OiFtBmbDKWYkvpSxzC4=;
	h=To:Subject:From:Date:From;
	b=BZEg999DyjRxxRyu9uzYVkNKxkgz4dY/Qu3X/weeePx46GVbQP0NX7CYfIs81/mLg
	 LFlWAGORLGtj98269qrvzsEzqI8vIysQF3l4RCxmDRpAnkGCYNIz4gwR72c4tC7JU6
	 0cBRFva1F0yRiV4oDUoKbi/GFn+owgUUG/I8p8HYENiAaY6d5X9cWjSjsRVXp6IrMJ
	 0eq/bnRjhn2KX8wUUe4UziRC81LcFQerm8nrTdCOhWm/lEuQX4vNm0tWMQiIJnH28X
	 L4pIc2QMU5vCQnIlf9TpiLk7wF2qZcvaweFa3AjecIeRw1sfsUsS1jCZBheOOUXnQf
	 /i3Hy1IfbdUVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CF6FC4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169885009643.31060.15148264567910344872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 406930884a3b0ff68d29aee3086415c1cca67553247fad868861583f0a3568dc
Date: Wed, 01 Nov 2023 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698850096
