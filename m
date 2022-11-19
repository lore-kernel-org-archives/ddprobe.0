Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C377C
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F232C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668838854;
	bh=1j697xGgn5JWvvdfiuL8sLiemi2sd2cg7ny8E1TOvXE=;
	h=To:Subject:From:Date:From;
	b=aGQ4MZOSuMwKIihvu/YW3DleBg3KQAoKeGvWuisDnGjyBMtiCdM6VdNtosaAQMrD7
	 utSzjIab3q4/7VateEuMoMOZ8JMZVgSlAThjucJctfvl6bx9ntXRBta8RAGQmWM+1Z
	 92W8sdGj8H6Vp9TFOTn37qVZHnmqNTJu8diFSQNLfkH5uvAy75NcA7XFdMdg8XZi7T
	 /WqiG8nFwHfaBfpI4L6oCNqn8ZcSkNJHTbRYIRO8aGNYwj9I3OxxKf7eCK6fsS9pPy
	 hVkePsVa0+5jbLyLAPrUyvoLrJD/WUVXyYQY+6rQmxP3+NIpEJHdOlyE/d+OrO5qTv
	 odhF8fEcd/z8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55612C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166883885434.31444.10847561256060658100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bf25e6e4b4ab95d8e1d4c61ff5c19bf2dc9585c32a6cee3d99d08ceb6c074c3
Date: Sat, 19 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668838854
