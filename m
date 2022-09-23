Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52A84687
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6926FC433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663970453;
	bh=e6PbTXEK4osabupYTRMlpE9VxG5ZvWoRjGVuRrEunl8=;
	h=To:Subject:From:Date:From;
	b=fqnTI+G/hme0Qj9yNRB+MoGO5VleIY+k3r7d2Sz0yrXVBrbBOXFvDMitjbvj6xra5
	 NQKRU10qD4apn+hUEXZVJQtFxMMXelHAZakk8u8yhgUIZqzErwSfAmFDlu0kM4A//S
	 ecYWw4eK5KXUQR5Lkx2wQoMgfT/T+MIhNWCDjKCMPm0KAUzh40b2409VXMRem604Za
	 5txfgdiMqwlf0X8Ai19Kyb2bQGFDI8n2moiQL8hUccpYz316blgs+mJVslYEnKQvkB
	 cRxNkLv8ebOUZhCkqJTslHRIIKRpyOsy0d12hTlTJBdzD6BajJCdWKY3ybnK+DWOvk
	 Lcy/VVn1Iv2yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E59DC04A95
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166397045331.22134.3611820086316677286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb75171be19e85f4cfa6760c5875c4515d4d30926201a0da9ae487e7988bce07
Date: Fri, 23 Sep 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663970453
