Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1671510EE
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQqn7BQ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 878D0C433C8
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698808096;
	bh=mVM4eUAcTGnENCUrwRXYWYk2HkWvw/ss1J6rO0YWBZ8=;
	h=To:Subject:From:Date:From;
	b=uQqn7BQ/V/muEN+K6tQzuVbvX8RiBRWxl4b0CoDZATYQjdThMG2md/rlrBMpu2RqM
	 FJVGZ47HDgZ2E4y1ftQZ+3Jac4hMIB3xCzGnfhJQbNdRL7rGgeGUXEe8Qv+ap6i6qk
	 c0YsFHQNqUSbTdtUwCQMuGQuaoHN7dQhooeUkJFtaDnQQvwKyW4w3D/TMwFjekHPC5
	 c16JP4uKGiSPZHeVll+Cogw/OZjosCKxIJ08bZgzGLU7+QqNuS7A3NPJnEQO1RRkGx
	 cgl6R/WKpMsB3N8/ul2xkJlK0IUc+s80D0sPY/3R1Z493A/9q0jmu7QbTXhyOkUVqq
	 YvXIBA86O8mRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67534C4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169880809641.7526.16525501409159254161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 045506cf3222d922fa69bd19aff90fe4812dbc59f74c96bf622e22a1e39914ba
Date: Wed, 01 Nov 2023 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698808096
