Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB71963CB
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C77C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670606487;
	bh=QWPLLQc2PqNJudk8RuQijBpHsOExL1xSrVmUa1r+chg=;
	h=To:Subject:From:Date:From;
	b=YtQQvLLeVFqWrEr9IHuaRG6O/DLJcY9LfsnTPt/b3kfNKms4KMbnImal8lFAbR1CZ
	 408fuwD8gJu5I/snkYGr0jW5vuRzHuY9DzD6IRjca4t9rCWCd2m9aCfflaIBtjLJyo
	 kwN22n4zhwGFRvg2Y21i1d1RwJj7hyr95H7rDtzov/GlXiSt7wa4FHP7YvQZs3c0PT
	 Rdf+rgniqeyAKfwHy+RpRaQzKO5hJ9jl0SJNiwkUdiHpp2wX6fVbnFvDbB2OBxJ4bc
	 gyBrn3ScT7ziT5Gi5UEL7gyZMZ5nNCp+cMbZOY4cBnbLEmRMF0+kcmuPusJ44/8apP
	 qLRmmzFzd5u1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64005C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167060648740.9010.5316525839514262632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00a85dc7fc05b5fd0a3f4686ea04f7abcd3f58c11cb926e9ad3351aa20756ef1
Date: Fri, 09 Dec 2022 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670606487
