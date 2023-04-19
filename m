Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1E515A8
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 01:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE4D1C433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 01:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681868046;
	bh=i5os9dIVVe28HUK49V+K4zoumEKLFSqiDqGshLcC4Qc=;
	h=To:Subject:From:Date:From;
	b=aDgBb1WFqdy3IPSxWjGYzUZfyYZgxN06lL1T9WoLO54fV2pUa690ydPHRR6Ti1V5s
	 k09dsudAq6QeLltkobAJ7CTTMABeHPBq9wzMri4N5yqF2+o8OTwnmAUgJTUEx4CwEp
	 a9JhHn9QyrLPYpokjls07Yw5pW/LMAIzmf+qGpNRUbz3R05aCvuhuzp1S+vnvD7C7D
	 2bL/WEv1HiVRpZlnP5cHQ2Y0M7SnIWPV38/BaI2CvLAgQVn4JCw1nJ47K73wUVyBj5
	 c0/qdji58WkFhuU29xbCxHO7+ykmPtkZo2+oeZDPf3gp1/q9nIYx92YbbNJxzOhL3k
	 S90ghnRtT9R+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA072C77B75
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 01:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168186804581.3974.1319029951657196911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2444644859219e2e0f32da82ca7f738d6564cf2da3d3d343816aff8976457754
Date: Wed, 19 Apr 2023 01:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681868045
