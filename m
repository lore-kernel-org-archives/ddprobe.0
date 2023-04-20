Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6241228F5
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 15:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06DFAC433D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 15:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682003226;
	bh=iRA/jVjdBxdnfsmQCUUcI30H5iqYuRQ2UirQq1UssC4=;
	h=To:Subject:From:Date:From;
	b=MsQhnEMzKAcO00xfDksu+RWuWcJ6WYaKKjCkDb5oaBGXoCY8vE7nHEYRAHFBkcmI1
	 QNuo9GxMZ9vfTghrn6aoDde5qAFW3cQeLAA86iH0kLGR1OsKKbVXmQgzxpeiD7dy46
	 ChXmu5Fcq0UC4/UpsJPLlerB7Xg7iMzJzF0p8ShD3sqj38qlF6JX0qmT7D2QCyXrtp
	 6XP0ht0JZ4UErdgdop2QjHSXKpPnJk0oWHtVRHvn3J29wKv6XwH+aF8DnB9IR+GvYs
	 lQVIXXJq1x4Y6KSa+CDvQFolOo7tni0QOgFLGPMNYw88Jnk76To/3pXE05LmY/Ue2k
	 5gwi03a+6F7dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9796C77B73
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 15:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168200322588.16238.6069320130865617156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 906a7d70e759c7a23d4cdaa05fdb9ec90a004eb73722f22464dbbe60e4b98082
Date: Thu, 20 Apr 2023 15:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682003225
