Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED0341429C
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXn9Xkkj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85D8CC433C9
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699641496;
	bh=FSezl7tYeF3ToDO1pMC4ZYK6znnrWWWmi7fsOos6YSw=;
	h=To:Subject:From:Date:From;
	b=JXn9XkkjIZjLk4JObciLhNM9PvxxIg8x+b7Vf6MEg5fFnkPIGSE8yM96HqH3c+ovN
	 3rOkofjPsHGJ9N/kFufY4pn0CafSIwHZ5FM/7wa1/JZB/Lb/PhbWGpcIcV2ChWIYt/
	 pnioZ55/po06Pfrk8w8GoTGivvJy4JszbcucbPPlcpmyXdRuqt9yEEjXbdLWlATuWZ
	 vKqvtmECl6ZmdZG8ZCKcrhejwgdYVO/2uhAIFJXQ5sXM+W+8c3B9mQ4GX5pi+KKnrc
	 vWW0gGzzGXIqgU9DUzFil9XFHvMcRaI51XzfYhDmz1/a7pM/YMOFdvvBJ1LdqkHmdi
	 J6yqy5n6Q593A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69BFCC4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169964149642.30859.5260891723376400203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a69cd4ce4460f4047a1e7682e8c2cfa1aa6dc9959b3a28d2a1841d1b48bad94b
Date: Fri, 10 Nov 2023 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699641496
