Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF61B2587
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 11:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75A4CC433F0
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 11:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672657287;
	bh=wF2dy3WP0W4QX/orfSl9GCGUyTZTMgfCcrR7yviyaFA=;
	h=To:Subject:From:Date:From;
	b=hgVmje9vO1em7SShlnaqAz6UqXnS13SLVutQu6rtIfWC4fq3W94q7ixrnMdoojzMj
	 eU9DpbBCnClZwIbuVbaO1TCMXQa6wvp8dXo40dd2M8xzc6u9Ud8GxnTF+AbIKm2smp
	 SH3aDRhcXjM6BHzvq/2RZLufXPVwROKMUpDzX0kxwIbHj840GPg1M9CVLdKCf3wsaU
	 scv3JNSKGJ189E3JdEQv0vNd5B0ULEj3NLA/EdGseKwdjSjVEFMMigUyMbA+DJdvdJ
	 xqEJmWJrwuMGRPR3ybIymIpU2VEj4ZGaAyD+QlTmxYa4NE4IyZ+aHOHoGp9p83E3to
	 aBrU/XANbUc8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E269C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 11:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167265728737.13001.5731678843336361581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ec276c28d5833843288dbff5fb850c746ba5345472445328c6c1b0c5be7d91
Date: Mon, 02 Jan 2023 11:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672657287
