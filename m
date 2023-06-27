Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F4D17E9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 04:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D019AC433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 04:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687840388;
	bh=18/xLtE7gLlGfLRDvz0WulCX/iFFXVAzXaicPtP6l5w=;
	h=To:Subject:From:Date:From;
	b=O/nHNia6NYSgGX1inTz5xrhTn5ohYEZ3xA9ogno4mH1jAP19nOUUWhVAihHYw595e
	 sllMa3fakbmOB3JzSAmHW8ib9fsWeyo2ygzl2E7k/exaYw+iQ4BEk7MjlQshAdASTv
	 Rzztq0QKZ+4d+mA9P8LXIXlqxb/CqLlAXz82u5YWa+yrSQ9ij369KUBH6XKYE0QpLW
	 /uqNZN5kbKpQFbFXDaa6Myv0Sdp4MvtQkF6J2d0q6hWzW5+/jJlEsSCK8XkLWuAQu7
	 jhhiyh21tsUNievp9he+d3cHIJGkgZAFlT5DTUfyCGlsZ5kKaimHVAI3biud6Ag15D
	 tm0W6KNn86Y6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5AFEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 04:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168784038870.23147.4672895904720851226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5a6a239e83341e7dc8aa86cd4eac0891961ffb65fb06678dcca3acb6b281065
Date: Tue, 27 Jun 2023 04:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687840388
