Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAB2695C1
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A8BCC433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673034687;
	bh=Y9FeND8K59pogB5XP1cuQvEr9oCbf8xLUVHNUE/e91w=;
	h=To:Subject:From:Date:From;
	b=DbZH/8fHchD/pEynsEGVlC90ufqioOQAXU/W1CmucxrlIs7a+CgqmMvYHN5KqGKLl
	 9tDBxCiPMS8XXx+sUEjfeOYM7xwtvA6YEmnSylSJIDFjE6nxmMmg8kHr+6v6T2zZDp
	 heDpz2cXfDyy/uWzLyNsfEIkIeEKztwtymIbK9KLxCB94vJ+d2kTCrMbsLi+PFAtoS
	 FY7qJV9xNJ1nj+MMjqCQapXrb6Dq6DKEycF0Z+/3xVqep3TpVdX0hLX6bWgt1WgQmO
	 uOJj7tcCIiLnHKyH2gBAyw3Yj9V2dNk40xqDhGcG4lUCyfwFXA/LJCiwNRYOFLFxcZ
	 yTAbL8Qkgpm7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79179C54EBD
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167303468746.32061.9137126232852511414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb9fe2e9499a3d7e27998ea3dc3681278cc0f67cdd6601cb5a5ca0fb605d1d51
Date: Fri, 06 Jan 2023 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673034687
