Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579E613AC3
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 17:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7C7C433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 17:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688058788;
	bh=Y52MyU4bZmDlaxIpHaRpLBq2USw2jVPZHk5eTVRyRW0=;
	h=To:Subject:From:Date:From;
	b=sLrz4qKL+yewP0v8AQ0gOdjrpzMiWiwLouYYJyZ+xN1px9d7d9SxAjSh7bSULAA4J
	 hADRjeTWFU8SzGV/EXxjoZg3q8Ega1c4QEzdBMZTl6PiRR7Jw7MFfzKUG3xRf6wDep
	 F/b4iNgmKT5BSGxNdrfVE/FBqeiVBSU2kNqAUco+vb3XWRBq8j+tDUn4DAWevQSw38
	 f07wuwE5NZw3QqOVH/11rfwPrO3zCbJ0hsCVarl7vsE7XeRcZEFpD1w/eTPgKVtyDH
	 p1WQs0V9RfcYn3YMz/9pHYi5xBayzeWds54aQnroxpraHGfSpTPyWYWupSWRWv/E4m
	 dlGM4wLhS8JDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9ECEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 17:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168805878870.25531.12911579972202294148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85eee1a1299132bd1932abebeb55958b3a9d4a642a6007c5e193d056040bf7dd
Date: Thu, 29 Jun 2023 17:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688058788
