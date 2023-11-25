Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FAD1870
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LoCaBoYG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DF20C433C7
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700886496;
	bh=D1Gc5Ry254GWSZlUd1J5uJpOPvpCiCleveu5h9VQaVs=;
	h=To:Subject:From:Date:From;
	b=LoCaBoYG+R8A5rmCdrDS2+ZNHIZ9I5GcWgwtxdYOiVBY3N2A/snWuqllxbA+0xP47
	 0+CXkRauFzfk464S9BnyRL7nAWokZEcICsiPuG/2JeA0uwED16PQM3JqbKM/txFrZH
	 SpX0dvG7ZTk6iujT2cQ3WqVcKPeGYqO0jemPvhq/Sxd3IY2ZyF+0BGdxZqobzEue6T
	 pecY5NNEPcB1JR6Csh3xm74BfpUlNqT+l2Jf6JtA3nrRlC+YAwTGy4U1qewNAwL8KU
	 44SIPyZuTQxyGx+pWGolrGqGXOo8DaEr12ofjfkdmABEsubzK92nUvDyIv7qnGu7HO
	 p4FpBOv7K9x7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CCC8C61D9D
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170088649637.2448.16976571812225069557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e426870c2910f12b5e6d06b462230a0f9a95b0d3c952ec7b203fc675d90770
Date: Sat, 25 Nov 2023 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700886496
