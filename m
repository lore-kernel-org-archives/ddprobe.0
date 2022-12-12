Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04D92585
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 12:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88B75C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670849487;
	bh=1832sRp7h/h4rHXiYyjzp7kw6N4RJSIGQZu0f+QaS7c=;
	h=To:Subject:From:Date:From;
	b=MZKDRERbxPGUnbWUykrM8xiBVh0Vmo2ZzFAJ0ZvEO36djCbPYetaYxzOFc8gIu/vd
	 L2z9ESpfd8E1N0KO4sd/ATHWbs4TvmjRZ3UF+RCvxxPKF6IG8ni4oQ13XhP0MVDb8Y
	 1roZZg5zMtjHkmdD7xpjfendkO704HoYmjv0BHZOGkSsFRXPvon9gW8djdlIE9Xn2Q
	 c99x4Pkh0YwUJpzLsFLeyD4/WOZTBbalvvFE3Jah3bND90ER/EqV3lBGXz9b11XKWg
	 31At3Aju7IdXI6tsyQ9xnU4if6gVdLcMagceLXoblf1tEiGYyDJqq7VwaX1u7wtGjb
	 c+FkBLZyOH3sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B72FC4167B
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 12:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167084948743.16785.4786896162404775959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec9a2255f042c92911431ac0acab4cf3e51219174b1d3f928065547ba544df60
Date: Mon, 12 Dec 2022 12:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670849487
