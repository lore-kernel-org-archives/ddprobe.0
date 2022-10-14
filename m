Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB9A83205
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 652CCC43470
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665760853;
	bh=SEJZGytex5a5molAYVKdLxB7sR5P2kYX/YjjT++11VY=;
	h=To:Subject:From:Date:From;
	b=JxBqAo0uXMefE3YcRdoNErz+aK5VD5NB4HAUgm9GNo9MxagcHYRV9JdO5s5WbmBLY
	 ZPMpGtsiDRRm8BGW6LLjs05HekWocQpfiIY4cLVdKWwlZrjcwUEmwSoSMGoW9Gn4eI
	 cglEqFT+UjIlHj32Z+YUxWa8ZP8dKAp6ZDLngcUYnrqxlVy4dTmvyEUeNLDWus4rPW
	 jtiDtoOVNp7Iyo3USag5iasVqliOzO36Ts3p7nW4jxMk18B2+qW58syKdAhw5FAPit
	 zICtNA/6pZyL80a2nw7uK+WDWnXSf5SmjLnZ/09Aq7gxhJ0V0QODaz45tpFpRL+FWG
	 9E0ngvRq3+jxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F5A8C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166576085331.25624.757308506191026763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea7c721963b0a5afb0b427ac38d964eb5a1432636b1074f7cd8ab78837286cf9
Date: Fri, 14 Oct 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665760853
