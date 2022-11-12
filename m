Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1427184E
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78BF1C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668264654;
	bh=R5tUYpPiDEP9lhCrGDW4u4XBXUE9L4q2b5a0hhtjy48=;
	h=To:Subject:From:Date:From;
	b=OA1+zxp32YufEEkoEUdfPdGlFJvd9+Cmv8Ox54I4XaapnWZxs+DfCUSCJPWweKrgi
	 o30qx3/kC3WEVAF1Y3/p0Z8ADDXOH0JOAxCkXL+Xh01gyCjpSGQY5MIjCAcxQ6Ha9+
	 naHbn1w9KHCbRzissXyGaA7Zco80/XpKANQW2Uh5vxCgFIVAAR1mZt7bVIh5YghOU4
	 I8CE5bQwOCZHT00U9bBcKWVGB0+Ee9MeSZcAZFg8KDM+udJAySDz/kwDZlylzy9wp4
	 58oUb+xSU1V7/OamZUiieZ77GCzgc9cdFjr6EltOW2IDhPyb4/pRuaNWh5W543Pm+I
	 9K/xLX1AGQ0Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AD48C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166826465433.1867.14765360707995525706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0edb01fb98cf49f5a1e4b4cd6f0720e40ad2289113f79b82dc704f759e3a26ee
Date: Sat, 12 Nov 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668264654
