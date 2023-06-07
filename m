Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557AA139F
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 13:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5D3C433EF
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 13:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686144125;
	bh=aoh0PzSv/ezybIaMMO77VDKkPw2OX8x0Nxx5BPW2MPo=;
	h=To:Subject:From:Date:From;
	b=qpy9EXJrzgp5AJdWuH/mTPoCIq2Yjo/0ymeYpqlkqo5BjZZRg2HGnoIOZszRqP+Go
	 CiOFlFvYhIymNy61KbYj8FveEAhB9XKe2EOjUS5TpZM8SW+GsK+02ytBfubB+paXd9
	 q1NSYYJEPUBdvWojGCaG5PiUpNAcd3NroMqBRDLsml9VfuvlGwSIJMml/LVDB6YfBZ
	 xn+bXiYMTCMJXRQZySjLJUin9z04PlNHuMqnyEHTjQ4qbvRZUqV+vVHKXdlFG2HkFX
	 1/94DNYdJoxlVH0E3DBSuqLvg2n7mPlJPhYVgKrXf/bEDDbyoLAoGVTffhgeA1Pn1B
	 WQkpEWZgB+7dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BE4C7EE25
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 13:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168614412573.21472.13510810953941080884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ccbe2e319c10490065deb608c28f74d56db632d22a6170196095df973fd235e
Date: Wed, 07 Jun 2023 13:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686144125
