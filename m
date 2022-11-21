Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C00317E
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68523C433D7
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669018854;
	bh=UMyNLUdNjeAzBwf2nD/zpJOjClt7uLHIPaVTDjO1O8s=;
	h=To:Subject:From:Date:From;
	b=j32GYc4gGzJBh84kcU5vtF5jPQmSSf+qimNwf7W5uIYQkrCVw0kCgcHOtrX0FX/9n
	 CHSNFHTYUIdr3KKkzsmkVLYn/9gkmgJNJlov88ZaNKBNFs5DShhJgPGLnLowukyZRU
	 pcq04rakYPRoWAOJAJSvJG7XXENtfkRVmpqvp4Z1JPFn16gsl1hNbGIw3aAClJvHOz
	 d7saVZSQN3F1fR5NDR4UXUU0gFu57zWM9CItMIwEMO/RfYlKmybmPHLaB8FBl/a+EE
	 5PlhZ8YCnKjoIhetdG6OTbnYxH2+BNtHj4+ZdDodga1DmpDRLD9zWyh4kemi8vXadV
	 o6L6RiAC4BKUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 511DDC433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166901885432.28938.7562743991199276034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12ac2143ffa60f9c68aa3a1d9582d7f27aa5444fd1f13454bb42a13c9ca06a8e
Date: Mon, 21 Nov 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669018854
