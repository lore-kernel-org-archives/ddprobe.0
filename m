Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5D017E3
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83BD1C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672965687;
	bh=ZthEIpS7Mas7oqESUw/zGhXW91MAq6400z9Ar96b0Zc=;
	h=To:Subject:From:Date:From;
	b=CuYeJYzuKKQ7Lk95/VMD4aUr+8kh7hn31+fE6RaAb5b6XzvEdf8hRaNW0Lob9vW+c
	 7116KnJSUVKQgVdUbzVyO0hXKNy/5avjmrK0V31gUtYg+xnBUN1YgpGiHpKlFNtduY
	 voFxcBXpO96p1ieKvOrOQ4TARXdea3B385yTxN17Hc46mgf2ogvqpm/navSudtf1oD
	 INPuKGKgeWluWtTA5doNUk6H3THa4+0UidbCO0iOWIssUUChthZFR6ncrzjDxtc2I4
	 y92tVFFsMFzqAILyuIM0pD43ipShRbJjyP7sw/85Eoutwj7QHjSOCsjFNJBUVbAxL2
	 1qNAv/RVghbcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69C66C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167296568741.17077.8117025202660714814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24dab69d7b4d349b94c50168e17967171fc025dea1b712603cc567c32b31c17c
Date: Fri, 06 Jan 2023 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672965687
