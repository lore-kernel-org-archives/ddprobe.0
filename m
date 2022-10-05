Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D92DC371
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7331BC433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664939453;
	bh=jtvqOwIHG1htyHa/umLNKF+O2cvicuo1oaVC5jGI6ZU=;
	h=To:Subject:From:Date:From;
	b=RCw+6KIQqbhnF6Xs0Q8Bwfd6qV/hvX1r2CKfsw9dXJ9VUCoJSMOo/aU/bcq4IKzpT
	 y5gyWO1GjFZEPD1tGxEaYR6k58BwFuVHJme7/UYOM+dGqC+SmcXEnalzQ/c/1K9pT2
	 y/air5ORKwUVeTa7roGkwrGyVvyT8jgEPSFXbh9Emv+GGn9mGzjA+PTQTiAUpKsYPX
	 anIWvYRDQ6bz5itUwfoAB0GDsjYIikUy66go1divs2jTDounzeLR1o5sfAG5IuQAOx
	 8o4GIrwdPosVD93AcW2gyvSC72R4FlC0Z+RDuQflQwQkj+kVJb3oG4GnIy7vnNJA0k
	 tZyOWGeSIIUlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 538A1C433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166493945333.24765.15174036887241059853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dec05fa382c9869a042bf29db407b463ef15ffb61c12cb0da20c9b261b5a783f
Date: Wed, 05 Oct 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664939453
