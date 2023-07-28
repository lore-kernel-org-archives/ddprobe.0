Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EA923B8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 22:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE755C433C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 22:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690582328;
	bh=7anjZmeDq4pPpv4rzFyITeysBuSJp56SxhyvLUFygrI=;
	h=To:Subject:From:Date:From;
	b=FuX9KsgEIvRtPWDnDnwTTGfBv+s/oIBf5aKi0/xYc96Nn6U0k9SfePuGqMIurQOlD
	 nAR9DkOVpBj/A9sMyBN5CQ3Mbb1CoxN9S7BKYxF2K9b2GAB3hy3RfUgfQp7oYtrJFk
	 /JU+q6EUgdXwDz4R8A13vNoEUdmm4k+dg0NPUleheql0Xs7/SYvkafoj+CF8xumiK6
	 i8VoZ0Z/UpEv7r/ZRMQS3WKr359MX28a6UpEGZcA/9V+rtx5UGFYo+5Pt1TSEjLlAh
	 ZeyEe5tn+mkcmq3Pc2zpjgyPfFjpzTYupFsC+WuWWaICjcKhw5344JhrhuYn5QLpdI
	 IrrE3wKFo8bRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA72EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 22:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169058232870.23676.17231534624967537093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a84961a9985321a40eec3b26fe65d4b07edb18933d5dbd6aa545e04178c0831
Date: Fri, 28 Jul 2023 22:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690582328
