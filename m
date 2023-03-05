Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9B33FDD
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 22:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71B5C433EF
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 22:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678054625;
	bh=zAIVvwQjMoR5QNIlSE7w0B8NHdRlnjc6iRXTZPdnMl4=;
	h=To:Subject:From:Date:From;
	b=alyTG2By4rTjU2xWPBqZ+rH8/1x1UueWjCfnnZUZJ3P2yAlJ9Ov8IJxyv7REbzzCI
	 sXhV7W66hE0TwGe9j+t5LSOhiJlBw7494GfiRuPJ3PmXHiJbJsSKfia2YxQ9IoKiHI
	 14V0q1i3QXK80rrJzqErGph55qeUXZBiEIVMr1yDw4P1g+BxBV/kQRmxe6SLdCJNr9
	 NgtojMZ5LzKxiWbe+6ZdjvZdbs6ckG1xKGYOHoHYQBD8KjgJiyiyS814ir5vr4c+Lc
	 H85n87qkRAsAIYPIR+H8Xm/orXCtdJTIl/7PWeDP3fcMtwuQDFQ8azMbIrITuMZOSE
	 tNzyBQ+yqmDNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F22C61DA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 22:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167805462574.2085.13381709085197754826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707800c3c1204711fa5f83bc96ee4659f729ac79b4429bc17e03dfa921b245e2
Date: Sun, 05 Mar 2023 22:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678054625
