Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C255A945
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 18:50:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0AE2C433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 18:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687027808;
	bh=ypWh3ijXqebiLIu6wBXy8vXM3nuyA5utlDP4gXXWQ9Y=;
	h=To:Subject:From:Date:From;
	b=JgxYydQ5JaGiS9pyv5wLdIosUlOnInD7k2TJKMp1JGRmC4zaQEYowOyUjjuZzhlcF
	 u+v/VVV2cCUlkB9bEYhzrIZ351Kb29usI+57aMuQLr/2gBSq1fj593/9lxBkOc93PK
	 vfcj6mPQDHzkipRitF68783s9TRFeriAB4fNuzCfsvHtI5Fn2IkOkgm1b3tMdwvz+L
	 DfL8qo7zKNvvh7nSocEUjRZOyrURS7tRAY1lAmqt//dmetHjS+vie6GRavZVlJhWH4
	 4nIJzHRFUP9sYW5/jyu9pVjMvuGzJ3eoQaX3K1M5kU7weZfWiV0p9T0ws4erfrsM6a
	 NSFyVJlA03WkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B8DEB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 18:50:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168702780868.22616.6411902821803409082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9086ced175a8c0a22ec952bd6443e8aa15e6737ed6598f792e206cac29f607
Date: Sat, 17 Jun 2023 18:50:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687027808
