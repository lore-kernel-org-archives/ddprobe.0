Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B36D11702
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lES6AUfq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83264C433C8
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703852296;
	bh=vMme+kvE06P/5BCpYrJKjMG5eZDhTXACrPuXhfJKKc4=;
	h=To:Subject:From:Date:From;
	b=lES6AUfq+O0tJRu7QTKXTE7htJdck4vYWvhqnZzU0XJtAKcQRGDcdwQTIVcymeBi0
	 GHvkbV5wlcCa6XnUb2ldvr2MpcjlXcDQzPvautB2HtfJ67bYulrvbh+LFJUrLrbXP/
	 aLMygEwcKiVCuyzd16lebd9DKOdbz5hooOjTpd0j/idsaJlTjonbYzWFyuFvu7RYAA
	 ug0BtWvqb4/XgKXMGaafV40ZtY0DH2y4puHjTWJbpkeLjy4Uoh2MqxTEX+XtQth+5H
	 XtN9itIrXqCSVT+VdVIYA8QFL8pE2AUE4BuMAPlNmG9xVoxgCJvkj3lWrK2SMC7ffj
	 QR1zYPVG9mlHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65666C46CD3
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170385229640.30371.2421071868327994864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9c7a457eeaf3291bb15d0f0f1055e04780e581f98112a40b2f49ac4f1399518
Date: Fri, 29 Dec 2023 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703852296
