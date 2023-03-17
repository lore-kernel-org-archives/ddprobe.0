Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B97779C5
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 19:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC295C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 19:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679080925;
	bh=Z+JywNKozxVB5PJAyTE4RZTUW7fEAEFGwaPmTzQFS+0=;
	h=To:Subject:From:Date:From;
	b=MWmwMCT9AnAPqhIN65ETKhCuw3AVmp/yiMWcJuhvF+CY6twad3VY5vopq+uYN01QB
	 m36BEVF191gj1jOd88FiCXlUnHLzt2zxlhmQbkpQgDaNRsAZBnX2zNBfFrXCF9oT8c
	 3KOt4EHiVYzYIAmvmwK9etYsHWp+HsvIPIga71miVC/KrwHKyO9CDQI7whjPHWfDQo
	 SVdMY/9pIak0GHkfRP/oO1l+k4Y/0mpoegkM9X6qLs/YOEEyzqCrJ8V/QlFaFv5EDR
	 QHrsWHxZlGnSyXN3dKd33nZPJZ3Xs+ewr/g+55oRdXdITOPBHhOELV6NZOQt26CxBu
	 rZWP6+cvCeVqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C07AEC6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 19:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167908092577.31891.10251968388099181640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d8b51ba37727ae9b2babb4c34cfb37df7ca1cb18bc4f60cdf8ef1cd24a0331
Date: Fri, 17 Mar 2023 19:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679080925
