Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2DD28E7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D5D2C4347C
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670320254;
	bh=DKWTGkaJCWdhljQGT7DKTUXQ+Dc4Md69d+ZrImU5QUM=;
	h=To:Subject:From:Date:From;
	b=k4zFDPEgufrQP8m9TLZlpGKe0S+XwHRBvAzO2C+pvFMheepAvjwmtRlrpZLqCpgjR
	 8eTE9L0wKIzLcYy5lFSQdTET0lP/9D+QFfC0fPykLHeFtRaRg5iNKvfcQKh5puc0af
	 z5CMau7EjBVko2odrrP3vKIXG1tKsmGvtBxmkgwIb0G5461e4slDV9kmKDaMLfrbmY
	 KDZqP8czDGhNlmZRk2xHlJKbUmpcOU7yRYqcCRyx7nOt+mP/w7VS9UR3z5sdIm+abe
	 +gSQwVyYVnVDluiq1cGq5s8tuj+vgFwOn2dqIK9t0rqWWRn13izPjq3F/pjrlUDzbp
	 oHPdT1cuq/Iaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5194EC4708E
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167032025432.20111.617873261032049413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b44db0ae74ada8b6f7efc3a3849c670a771a1a8d8d230e1c5315f3ab39f1cc33
Date: Tue, 06 Dec 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670320254
