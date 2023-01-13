Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC31136C
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91870C433F0
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673570487;
	bh=BOCnFLGWgbPVg3VGeJUDEC6IJoypuebGoIeESxgAwRA=;
	h=To:Subject:From:Date:From;
	b=k4ZB6FojXNIDo0OPCm7saB4zLn7zwLqM4voKp2uMOCxkLXmQWCOKiEk1/6LUxUuqL
	 WzUju74xutS+4PmWNX1XwlQeBwEINxv0Pn0yO5rmcR70fYlvXv2cWjTm9WwWxqbtq6
	 hwrdhYXoOyo0NwlisitsK+z5z/7psklSZQBQFR+3zA2oVbz1be8WCsLRrdPFsp6hYw
	 Gj4qER8UWYyyAWcfKkwGMgpJUv3WShjC4XVthyn3aNdmj0ihAuKCQ+6mM2ZWV2+5vZ
	 HbRxKqEbXRWQybLEIIKOFCAJGX+DYe7TEbN+gF/0XngS5O0iurvNHKQQXKnaU/JdmD
	 7CHQUFdRP/tEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 709F6C54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167357048744.8178.6665437076500183857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd747d5c8e166f9df468700f5345fc59dab7baca0dd906d9c48eb1f39e46419
Date: Fri, 13 Jan 2023 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673570487
