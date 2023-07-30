Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B063D8A
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 16:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94D1C433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 16:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690735928;
	bh=yBXhRQh9xk99FxsHVdldHrc4BGXr5jODBpM88A9glAU=;
	h=To:Subject:From:Date:From;
	b=jPWRyHCL5dg6xwY2YQdXUQZLz6+P0cSPhWVct/3hNZyrkaqx9gJiRkRajNcjIyTiI
	 aFaaXrK+ldaUoNOdl2el1emGRWi2Yuod7VlI6wKpWuZCaBjsW1uyD8EcoNVioq1snn
	 /aImo/1mdZU3K5aEY0Pj7E8xVYSi+q6/lahssFzR1REkOjpI5N4mLYxMMbTzSwmeNE
	 zc2zL58X+wI0mNZOBCpck80IowQAGjn+5P+DyFyuNjpP6TUMSmGg+ipXmoRSlsHANX
	 7JNQAz/0M0Lf9zykjtQX2gECEA9vAiYiIH3yEhgDZXzfFB4UE0iMmvmB6d2s/OU033
	 eCPDB3/m/l7DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB870C001DC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 16:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169073592869.31797.16609411448598632950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42b115ddbced9dcca3911921baa8d16c9b30b3c5b3aaf6158dad9a3eb7f2bb0d
Date: Sun, 30 Jul 2023 16:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690735928
