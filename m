Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F193B13FE5
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAgEJVir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 779C8C433C7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705400296;
	bh=vrBZkfiMbwk99X9Ya/K9xCjehFrFON6COhqjYMZxvBA=;
	h=To:Subject:From:Date:From;
	b=VAgEJVir44O1FwUeAswbeV+9KJj7BInFTgYJ9HuK1OMPeeERenyoRBsiJqoIqRWRb
	 g4dhfu3V80L48MR7ADSUkmCySgkU4vfTcf0vr3nF2jsZkCtLlFaaTD13Tv8v8bNPk5
	 Qr1uQAikRHIYvdgjkGLTJlKL1geOMsMAlKDjdZRZG5fwitfWRATTV45ILXNjbVkIh6
	 G0isOLkXRPzPcmoaMx3wMhKZFqwgMv0EhrOPSodbFZukUtEsl+7RkUo3JUwEqc2vPq
	 P4vE+lDBnCD6ilX4K6q9X7zQBkUNUp7qTpfIJnXGn3a7t4J5kAgiVdicCtzqtdYqds
	 Hkoey3HBQQy1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D4A0C47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170540029636.27152.13822050941888697775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8b860c56a9602956f16fa17c803a942a9919dba0d4c906df5f780be9751d201
Date: Tue, 16 Jan 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705400296
