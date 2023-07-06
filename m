Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF919453
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 15:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8EAC433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 15:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688656028;
	bh=Ri56GlBL7wpDT1cKacVJnf+Lz7KaayfHdHvpoCHmUkY=;
	h=To:Subject:From:Date:From;
	b=tTpxJAN8Ol27CMrA0SEaHhO9bcmdDqCaNB1XVz4D0NfLJ4W8UM/sHoyYJ4IL7cG16
	 YHHxN78becaBv54KrSbxdLM3UbQ46kleYVYgh7GtXi5XVSmDQb3+mptBxalKGKPeJ3
	 +L6GL32UCAHb07bOGgEyCCSsdTP4/ULQ8GP+qW9S6mYmqNKGId1h9DmpWvSE0uYEV0
	 A2PTtJJoGed8Yi5rO2RmhRH7+9m4K5IAwK7I+/Jg275QTwhVFcRlrgUo+vfdVT+3kU
	 RNHYQTZaPB09qCJL0K3orx3GMcyZhlYugHxkTxYgrjDq89sQ9BpxqNNCEDlQqbYbgX
	 5S34JYoiORyVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2F4EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 15:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168865602870.11456.16716197295989856653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c58e61eb352a47c57b9ce6481cdf4bd89809bec07a4bc3336746ec3bac41f8c
Date: Thu, 06 Jul 2023 15:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688656028
