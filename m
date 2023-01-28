Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B787481
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 20:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1B79C433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 20:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674936786;
	bh=Wg8iuRsRuQ2XLASPhVvgAId+hAiJQyudOclUaskEWlU=;
	h=To:Subject:From:Date:From;
	b=VLwhmc18T6n0/iZlLs7NBVgnB9d9hyrL8NPTtfq/VJXqU5twh/08aC1b7bYAu7ziW
	 Sp2z+/Ctrmdi51k2HayQ9XKCXxCgwj089RAyqAoLaO4RQd9u8XJsMXyjKI3QaVML60
	 /Ln/4vl1vtoGnF80GvA5uyyvdgjCqLclCVVC1hJy8iTxgnZnNQX6jAWHXFo20PjQg8
	 1npd6K7OLVS3lMv4ZS2xeUSV9ju5Qz68SEyyyBz9kXoDKYQA/qnjqdq3t34pO7f8JO
	 gzakVOGPOlr2f2geBGjvkSrAy4Udn8CkhuWTBrvEBuTOUQV2EJbhC6xOjgj4xfSDCZ
	 3LdYjY1dFK0QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC1BFC38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 20:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167493678582.13399.9534822470455229427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc89b8cb25f5b81bf88384e5c4bf2b7c7aca0408565a5d05a3f7fb02cedd789e
Date: Sat, 28 Jan 2023 20:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674936785
