Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1856A489
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8558EC433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671816087;
	bh=eqMGrS+7GoudzX95Xt8ElzixRiIKQTD3j5xyj29nwmI=;
	h=To:Subject:From:Date:From;
	b=OCfMR+W6Ol/0Ookl+qbz5y815dDgC0UPEI4fYnm25ylxsvCf1/Qa96OuNnvT6VWfo
	 B+wR1TqSwpaGYhNJ1CACfo2DFpBkoLyfzV2ECeRVf0SeMfAfL6rXRy0JJbtDDZItq1
	 ORIo6OS73R+jysbUTg8M5EePTsmiQa3ZjA3SrKN2oPXWVx2MBn7UScq7IYkGkPyNT/
	 zEN9MLiXEVFlBozg2WJY5/4crh9P24Te7oULtgi2uVDZ6jQHbuWEzJBv973XioqMOd
	 5dYCsfggqXQ9Vy0aYMOG0fsf/w8wcO/OMsEnvwR1/X6ZlMxzeSbolXUq6rvhJ3nGIu
	 CRmZGzSzAlO9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69721C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167181608739.23924.14052482155781130053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d801bebe6fbf737c93a4337d423e80594609068c58f24350e0f3a517fe4690c8
Date: Fri, 23 Dec 2022 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671816087
