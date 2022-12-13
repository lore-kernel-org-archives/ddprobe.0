Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD6E23A3
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7665AC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670913687;
	bh=MMKo9KJSnWMW6IgNdgFnFfAXPP2O8lsp/JNn8dNPTdk=;
	h=To:Subject:From:Date:From;
	b=X4cSBNt7K63tWFChT6B7JFbs1vcBxAgj/UfG+MvUQxgW+zuoxvUZKcRDxyeGtaa4K
	 z/FU+IenBRHY1BJAlrIol9QYrdalLQpGJjfI5fJK3yEv0kbUbsxevk1ODBcunDfSS8
	 b8zZcFIo5hjxIpZOzIKTjpdLXmIrtaJ5uQ4MZ59IDOHCvrYws72mfiojdNYS30sa+U
	 GOdB6QgQT3WkSa41COzqUp9Ia873bfhRhy2xImLdNY/3fJN6FJFMBiE2uqJXslfWIN
	 m9KtWFYn0T7Rguh2YxTs/9QBBc/Uc564vHr8+zKoWoP4N2PaeUaB+QCSXcS/oqooip
	 klm4lVio+T7cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F205C4167B
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167091368738.20396.565159691089402108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa7a6c997eb936afd83fcb941ff56ecc44508b0828134583439e500339252d0
Date: Tue, 13 Dec 2022 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670913687
