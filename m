Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC162CA2
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6518FC433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665486653;
	bh=Eh7CUBvUCR8GiLWZPVFy1Whkf/C37Ydeo4UqxOFijCY=;
	h=To:Subject:From:Date:From;
	b=NlAaJChjoh6XQPtNcQ1AiCbOu84OifnIcGO286/oQMxJXX1YFmwZizKEy8b0ueDve
	 ag0gJQmPWXv2mB+6Q7dp5pddxAAkrfSPXL6PToPoLZAleCd+hd014nXCe7vKKzGvJp
	 Ovu5BNDD15Bd5l+iUH0ql98HUGayBHQ3tp+p59rAUVB8caHcLa4efLu1wjLwmJ7d2F
	 MGEojA0aZbJjs8eB3suMbKcFfXlm3wROOsc7c2HA34YPq+ZhTHQBTPf5yYjjPWqyr/
	 inxDcYwCnpxfGcRVb6cEyaE6ImIfKRgsXmH5Hwxq8NuVULnEtOaHO8FfKVGvgvQSQm
	 APT5IzgjFG2PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F3C9C433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166548665331.513.1801531141587359716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee3b744a00fc7f76658f6e8c4e8d4a5939f7b3b276dc0bcf5cb1af875122cf8
Date: Tue, 11 Oct 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665486653
