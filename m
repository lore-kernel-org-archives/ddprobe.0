Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0ABE80F
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B824C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672906287;
	bh=4LRTohsSgGpdQ4bIPk4sozcbFVPm0QHIcBs0ae0tHEg=;
	h=To:Subject:From:Date:From;
	b=r9jggXUoJqngjbd8JpyjUzKRGuxO05HacBkU/GsHpWtdsd3bKc1/bCNif7rPyFI0X
	 6C/vO43L/pUfTDNjwOg4BXDQGS0W063F0j2Cw+Hp0M1iQTqHWqfJkgcCtq+/fJJnIq
	 GddPwF5i9n9xUuhftNuKY+j8heuyINGu6J1mcv6DyDELLK7xzGFKkjnt5YRgtchIE+
	 FkoISnwludXd4VLfF4n6GNA0Ugi7G+n3GazVRRRUsSR45kyO961orEroPYpdevnMs4
	 KWEuqhh84lJ8fIW52nT8gCXYg0B4O0wjYhxxBKUF6ONT13Grp4raa0kGnUdzv7+cHx
	 i7v0mP0ORxjkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 600CFC3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167290628738.18393.15421633608012463796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02276ad176228e4872f9d3ba03c21bbb6fddacf6d6d15a07edf0c87a085a132c
Date: Thu, 05 Jan 2023 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672906287
