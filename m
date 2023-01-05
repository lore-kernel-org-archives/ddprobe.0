Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE38EB0F
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EC9C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672939887;
	bh=fvyfhv1fpyPZTzNpc+sfmE3MbFc3MJH8aZIECgiRUhg=;
	h=To:Subject:From:Date:From;
	b=fDQ6ZC+fQZwxBgDVduQKNtVRi90RBQ56u8YAhQV28asdvHvYElgbDD4KeL9+A+heP
	 PSUOcjBVhB5w/6cUy9sIaUt/0njHbM9fkOR031B5NUM331iFm7wlkLCOpR1cbj1a2v
	 TuTdoOCAzRZMU/wkP0o+EBrRM9mNC7UuCK8SinwSpA+lodpMxrISwL69iLVSs/fOF3
	 JqP+dKI905hOsjONFhV17P+D2viWGiFynYjd4vzBCrHbCjdEQLHx5ZO5Kh6i3o96xE
	 /jUFpITv1qxfhVWqE0TLRC7xZpX75eHg3QDekOY1DMLDruuESKeirxht9Q9MDvyMJh
	 35q138T28leNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A68BC3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167293988749.12526.777103598226713227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e88a8d26b4981e45ace6a4e300edeacee37146f999b2a9bdf6908c144b8ec9b7
Date: Thu, 05 Jan 2023 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672939887
