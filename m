Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC991C26
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 03:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 863D8C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 03:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671593487;
	bh=1KuYEaln2Ew0qZAeQj7A1fMOtUweQzycgPVN6KmDxgM=;
	h=To:Subject:From:Date:From;
	b=n2LsibTvIDmyAVPk9j0hWtzHyKVpBfiV59l99jq8r/Qba6TbQWpDM9ovrzXl71AQ8
	 RiHXvM5zdRPpq7TM8IDqzGUaa+GOA3y8zblGexj7CBhRmGTRd8nc47fJS1wjmK0YnD
	 hguuMfq64knxEvlbEbPOvqwartT28MvziDD0j07gpepLvuAN7eA67h6iP1GAfWpuPG
	 sfB4hDjSih9fQuie73u5yl9X9bNNv/B9W5HGxk+T2WiMJDRAOC0rYpcpPyKeuxommJ
	 KUaPxZ++xypoN82XdiCP80LUS2SwZWNZf4GMe45LjNYgjA/yJaHhQHHCipdL2iiiIP
	 5xewJo0KJCFwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B191C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 03:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167159348742.1776.9282259139586560592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a1c24903804b2b2769c6ae7beb04f2f397c3f7c7001c726e8c8349387285052
Date: Wed, 21 Dec 2022 03:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671593487
