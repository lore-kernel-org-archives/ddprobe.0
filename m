Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E553C15AC
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90048C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672450887;
	bh=F0Cym9xdfoiuGzGfE40qNy/s7/3aBegmqSfsIs+7N5c=;
	h=To:Subject:From:Date:From;
	b=Z+zbjpdscin+YxvhYKmfCK49su29K4PsXmfUDdNVswX/1d6e0R1csO4YuiIEvZQlr
	 FyQWg5WZYOFaqH1YnxwSFezUaCvWs7G0r6DrHjgx/CsnAdq6KXdIsloB+QZ4yW7FYR
	 DsllZcwRw4m7Rie8knsgxGVy9+76Ueb8A55318+EmbcjJsoZ/yIrHLuYBh6fWGEHP8
	 cO4MOPK8vyLc6Rlif47V1NP3jJVM2sdG07CEAgw1QghiN3QmlGby/4Vb8hUyxx/Mbg
	 3l6u5ChoLb2ACyZ2umVz0h+dfPvtWHcDwTDrYAQnEvyb5jq3bdNvRsXsdUKTvRazAI
	 AU1uEq8tAuJsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 756A8C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167245088746.310.11268670388483264675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f416387796b88aea21e9906bc084cb442a0e8927c9e664b00830c5e3f7d029ac
Date: Sat, 31 Dec 2022 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672450887
