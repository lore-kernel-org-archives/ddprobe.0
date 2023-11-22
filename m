Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE6D24B55
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6JKLXSA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CE72C433C7
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700675296;
	bh=w3Rh1R7tA0y/fZ+ZCzIyBKiw9enMNQCxGmxcfV2BGLg=;
	h=To:Subject:From:Date:From;
	b=b6JKLXSAy0H0N64M5cnIXrsL8x1bDkKxeEcAk0Vo7qHSV1XrdT45FRFh/xyCPMzeq
	 ync0ubzVbUSdA0PdTb0sbaHS8JJOPK6NhGYxIHsr6T2ZL5vvT7NAE1ArMXUXU04qTM
	 yeYfQyZu+B0JcqwZtbz5VHHZVkqwQ5bhAaaEzfZ6Ck77ifqf2IC5p4mPryCkDkbcxx
	 flG8KaJ2WHqo+dvUBh9xIl0zomYDMSOOWTGDSfvx1B41cwv3kfJwBiOyBtxe41Ub7D
	 V7tdoOFE6YdvU2b/0n8eaIUWWWIQpu5RSwuDKiTT58A2KqofyRoJKfNb2RTLpIEnBl
	 u8ffwEw1XJHww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63394C61D97
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170067529639.3215.5922984788409996079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79ec8bf870c46f0461544a99de44d8436429745a77b296d6d7c93a4bfb4b16fa
Date: Wed, 22 Nov 2023 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700675296
