Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376D833D5
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 17:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB4AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 17:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674840185;
	bh=qG9M3+fnY64mzKZWF6lhV3YlbMia0aWwT7r8bzyBJBc=;
	h=To:Subject:From:Date:From;
	b=n0Hqp3ezpf5oV1uG9F6t+c/D7/qNUY+tRt+Qkslva1WIVtmuNH6R+2qhTxZbPcUI6
	 FhyQq/KM89UJ4mtM8ma511K3WiD/SjDxv8cewC6RlzgeLI+ccWzUcaKUtuutkNh0ek
	 cvdqYauzltaVRa6EVwd6edBo9srobbzcsgFurFQczxVVYXcYScoKSi+1z0pl1sswmk
	 x7zSOVlDTxg0p4hn9/I9fnX7PFfaqg5YMlLJD8KXskZCTAQIDxfXH3e3CXdKILAzDx
	 tQzCbW1u2jc+XW+xavWu2hjZ2aiPnGZCPpa0yxzF7vtXKrXiytbEBww2oYk53mwSxG
	 s/eh/lD0DMnhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8955C54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 17:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167484018572.19174.14536361058038565259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34dae58baaa2c3aedf0f505ba1d7db305bf2a1b4294dda39aa089daa06a324b9
Date: Fri, 27 Jan 2023 17:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674840185
