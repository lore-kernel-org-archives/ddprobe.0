Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D795185B
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 16:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAA6CC433EF
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 16:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681058466;
	bh=3zPjyo1tA7nE7qzfs48/c6vZlkwjC3K9qxpI8/Os2NA=;
	h=To:Subject:From:Date:From;
	b=XDqABBwsuPCwUWTOfTpjudDlt/TuotBSEithIpa/LsQ46P2eNK47pj1NoN2WeVyTn
	 Ij9yi1z8VEEb28z+KZZrzbgo2ztmwWGkLELK6ETbu9fK+bSn+gM8/88tDzrwGEOpSt
	 fsjhnJUYipJ2IE3Hqfub0J/FRBFRQi2BIdHoxxjjc49fJeKii8/q3tLn5WMqn9qhN8
	 znos6KddLKXkklCajruo5cfvsub6QUYYoknXC3sjGjvx8oD7KT/lMqbKJDOwwjF5Nf
	 d1qxxspa4gI8I4LxqzRzC8T0ReJUUxuvZh0SyUbr0sO4Uk2ms+wkUGyObOnBQRU/UL
	 awz5ezIPy5UNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDB17C77B61
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 16:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168105846579.318.4726945378239395180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8f0192949e6f66f0a32dba0d6c4d452753d8116abc60a8d093170068fe5619
Date: Sun, 09 Apr 2023 16:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681058465
