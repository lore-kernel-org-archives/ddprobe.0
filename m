Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB363D72
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 10:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67C1C433EF
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 10:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684493885;
	bh=gocqOFhnGlMkuzWhBAgWSI8iRSRxmlILxp+gkLMPyXk=;
	h=To:Subject:From:Date:From;
	b=PNi3E4aXUQxQhRcW6xhJM0yln+wNPoWrR8h2cwPicxNg3heFw+ISLJmLMElk/D10E
	 ZSBCsRHruh9htzB3gS3UKDQm74lIXapsA/PFcMrSGlN1TPciLE5xE8umXne3cq0ZPW
	 a5krGUEM9b/PN6RlounTUWNl+oZJ62O8Lb8FsFzLa8Gn19tKF/Nx5EBgyjKkScne6Q
	 ajgEF/znXZ9XuN+g+C6RZlHuQSmhVjxGsakucHu/1JsuaZ2pj89PGKnVWQoW+OxckX
	 bE2EpMX5rBSfnO4ABeZjxYxXmT+xQw/AgjdePldIbC3q3EPxn/See7hVpTnDkB6MWp
	 GzZpFWnpqgmWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECBAC7EE23
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 10:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168449388572.25967.7724501421809691321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89b2911966500ef58540de52de5876e14db6ae2a6e8cc11a560fa08d8c846c6b
Date: Fri, 19 May 2023 10:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684493885
