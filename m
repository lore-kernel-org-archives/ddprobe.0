Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C983F4433
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B9AC433D7
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665780653;
	bh=vHPEwBK9lN53xuMLgB+IBbG/8hbmonJ42Qk1wdLXFoQ=;
	h=To:Subject:From:Date:From;
	b=RS8wNQ2CTdV9GSns7EHxZpiwWHfhL9U5+kvE9CeUjd04rmrVLhr5oR7i1dSCQ5ojp
	 qWeg+S9aZ6Y4siyD/DyDGXVuMBYh0l68TQG9J5NTxV34nCMVRuJ81RZ9eNYsIs8lQl
	 jvpHKj+fwo5TETtRtFDA9ppHXwSwJlOQ5XqGbNOGUiqui3TsgRdQl8ChRnC8aZZEHL
	 YfZeifdoz9PfHEV1VwPCj2NwHTeYCxOcI91FyGfW7FB1xFvdE+RBUJyO1HzbLVE0FS
	 MwZhVQczYyIdIIPrTLt7Tfih0RFeet8WkyhJlZQ1h5V+8dzJfGVomfe+2SiSHQzkIC
	 vdlx64swNfwKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A469C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166578065336.15703.539919838316497587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f67a4106314affe953e7cbd4eea5d5673fc5e1f1fa47f7b132974649a940fc22
Date: Fri, 14 Oct 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665780653
