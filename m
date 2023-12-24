Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2B110E1
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1WX3rZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AD64C433C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703400496;
	bh=KKjMalyorBEQ7wbCDFFRQGJ3opHM6c2oGSVpcSOdkUI=;
	h=To:Subject:From:Date:From;
	b=J1WX3rZNJmaq6lOgNPWSzsUkssQGC1gQw8H3qzE0IVUC2fKes6YvEOvNBPcCsb5Si
	 pDwq4AhNESuuJteZCzqZsDA1J3dD4XY93qi6b9UnkTl99EdI0LP3/PA6ciIheq79d7
	 4V4/NnLkwHcgD3HqFrC2vP+vleyFwgyAwc7Th1GeV/W5TrCBD6/YP11TTjb1kowf9F
	 7GUpmxHzXbu/nS4hHC3ZMLf38y4Sjd8JMy3YUsSlakr198TnJkcruTNOQLKcqQgSUv
	 pE1GOIXhuLasAXmYssOEMlqL1A0fzfWzUVI4jNgRYITGzieyoXHA70AA7BbuZFf+qm
	 NYT9vyrM8J16g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C5DDC46CD2
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170340049640.7815.17294467957868298991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06a4811ca2670ed5e32356cf458d78f8a01f4cb55be918f7cad679f7ade3d72f
Date: Sun, 24 Dec 2023 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703400496
