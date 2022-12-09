Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE01F802
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8502CC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670562087;
	bh=1sHFkGqpY6hwKfTmM0ZzZXMScuUjhvmCfBeS6gQlF3U=;
	h=To:Subject:From:Date:From;
	b=mejlIblDJhSe5CnxUCYoORHKXxK3dVDSLNa7C/r+hDo/SK3QAwNbZrN8xY8W7m9UK
	 nKRSX+XAuhdm9UBfL5dovcWG4nHH1spqKhIpkNx4oVzjrAHPv+geisclLUoWSP2dYk
	 5ys4auGzd5C5YaEOdVvFcoF31u0MyA3I70B5oQX6mLVbuIUORY6eK5Ucskm/a41GNx
	 6YYs3L3uHhAm7Ju/pRu7O9vFI3i1pUO2KCDbNh+GWJsYcB9ih57XI0HgJ3vTE5ahfi
	 3zfzdyEYY0ismr8qyp1htGC4VNN95FzPalcqn49/JbJ1uPXmm0fQXnRnKaVRY5lW8K
	 2WUI3wt9l8uUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68184C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167056208741.21452.17044824644722212959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d379ecdb6f870f4490c284400b0bb9a9a1cf49c3b7b2fe8f391876d301609ec
Date: Fri, 09 Dec 2022 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670562087
