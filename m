Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DE437C
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 02:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1845BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 02:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676341446;
	bh=kaQ/WDUYFqfkjFWRR9RnO/vTvWkj/iLZqLSlx+lypAw=;
	h=To:Subject:From:Date:From;
	b=MnZ2H77p2dccfU3ae+e/25XK31aycmapJ8Z4n/TtFCLnQz6hkfD/2F+uFnRI3Y7uu
	 HbFe0RKVudJrXIU1r5LUMj6jOM3aH+wkrg+U6eznUYTW2G8uJEWr3DSkRWTs8Jg+dM
	 nF5BM7JcUplGLmo8PhO0IKi2dDK2B6C5SCUoFwHcqdnPH3LCXgdqFApHdsmcJh6BhH
	 Sefu0vyegdnepM7nLIovgFVMk5YnIKgy6yyNVsJeJv9+y61q4X3euQNSXyA4vm6cCI
	 W5aLaWFw/ozjZ+mDNPe/vE+VecyYVoanXxre1Q4TfuzdXbEWUc4RV1U8R2NRe2w0M1
	 WltfiM98/37iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7CBEC636D4
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 02:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167634144580.24823.9042570455645218701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ecdf4d144bfa41fc747865d3de186607706c438f08af510b8a1019ac2ba55d6
Date: Tue, 14 Feb 2023 02:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676341445
