Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC8165C81
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71932C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663339853;
	bh=kBK+D7ekbZpjLrVssf/2efgx7pTC6Mcpfd7yxNFqQu0=;
	h=To:Subject:From:Date:From;
	b=iayjasR3715owHAKss2YQtQS0lE4LpAJZzu1LfGYXpyNFeSs6deQEWcBDm3F6x0LE
	 hD11+RD4XD6FmSU897BXdAxh/NssJUJPufU0MeDPi1euAsncY6rlHTqixFp379VbAU
	 QatpmgQ4+Bt7SVFZNcDXhmydMk/C2E74blAj+Elp+FeuZnQBg+ZruqvIz0WBEsEJmD
	 /d3MQlAf+Lh3JEhO1Z+0vYobhGYXQ6/AEfIyRMMjiOjZX4Ng2YWHsozd0rABnsCVCo
	 bgPZatl52shI1Vgm8xvMgPXCWgnuYkScQWXZEH/ypTi+44qCgNEYqcFjZiaS4CBc1N
	 mNhZNfSOFj8KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56474ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166333985333.14762.5556447119213475162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 107071a44f84254e886cde39e8773836fa317c775f365ee80d45ae1eac4151ba
Date: Fri, 16 Sep 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663339853
