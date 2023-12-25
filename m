Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291A91DDC5
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJaoUKpF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8E0C433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703515096;
	bh=tOgpDa7dJcEk74iphaiafglLH0O4E5gwzL3A7jF20bg=;
	h=To:Subject:From:Date:From;
	b=RJaoUKpFSeRts/GY8+amBUf53oLs391qm6eS80FkZhvC4aPOATNbOXntcpGUVv2Ee
	 4if3nQZXg4i0oaiDN1ImqnzHa91wEqG5Goct7pLGKGmFQPryPXDoWL2CHht7IweG5g
	 TKkau1WGoq4hdPu49fNsuCrZKLyTpbrB6n3Y2fQMkUBHmDCiVIbOgGvhybeuJbPyEU
	 YEvT4TInBSiu5niTQCdPX8g79ey7qoRcVZJgLpki9p6bMWK2B4vIIy2symzCodPGpC
	 EO9SBiS3Sil0eciA9bvQBZAcIIZ3VIdW+F2ZJJmotVIPKfMbx1+GOLrJrD848eBkk5
	 0nVzlXf+UqsSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F093C3DA6E
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170351509647.14852.5284070419033500847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d496e34ab37500d2ddb5919ac24b0bfb1ba996dbfedde36176a08165d0215b
Date: Mon, 25 Dec 2023 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703515096
