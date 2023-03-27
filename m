Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FAD7EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 05:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAE6BC433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 05:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679896326;
	bh=+XRJSW/RE1H0OrRHJRegVq/lAU+LAcDbOybZKLF6Tm4=;
	h=To:Subject:From:Date:From;
	b=fjcrIpgjbwpAe2hCxXEnGptc2LkV0iI6+G2VXXqY0pfv5vkaMNSsnNHHULWSZGpJ9
	 J2TsyZBQNJ1+mz5Dh/6lP3NfXZRsC62SzSBlMXx5Hj3zGhHJRr4fAjeOfrwR3da7HT
	 veLQ58zq4PMTxh6A4qPxtMPhQfk7IGlkwC3PpOs5/WqTVN+LQtHCXVMpWLdGGhkEiB
	 c3wJ6eXgA1gDJNRQCPQMACJ9bi77YaijfmXrU1MzFYstdSMK/e9I7IlAx7xZrQ+HRF
	 GXk7oZo47wkdEmBqIv29FC97JxDfkkw6eLCpLoPzbvIf9mc9pcc8xEg9Gm9Tj1M1Qm
	 Qf3bHJXgOLweg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4345C76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 05:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167989632576.14327.9511516391761427811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bad8b139cb2eb6fd0e4057b225cfa672734cd8b5277f551b5c5746b2f902ca3
Date: Mon, 27 Mar 2023 05:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679896325
