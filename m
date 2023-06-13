Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DF861844
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 06:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EED2DC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 06:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686639366;
	bh=stLcrvlvZsTSPQuUsCaGDHrsawfDdioEieUtg31PoUo=;
	h=To:Subject:From:Date:From;
	b=cu22VyVeHhtJcbicYD6NmkHEyTbWNPiPawB8iQBAu2nzQLR/9te670nLGVi+qUNqV
	 SuorDSUE05Vogh624OJeY86k5qPDoJOrfjL9jG4FqLxC8xr0ntgGcaAsUfmGZq64wT
	 YjIe2ts09L+61UQblYgxUv4CVEZe74zmT0Uw2oAO9MdcbJmk9eCKHmEWypt0TzqCmg
	 H6VA34vsguz2GTdcxjTEj5n2fRiubNu/r1SjG0YBS1uMuVGNIqX3TwhSPnW8bPMJ5+
	 Vc1SE/anx1630l0oYFOedlNsO5SnzNd8iLZiJ7elR95lifGUX7kLGvAJ4lUP6fBqq9
	 rkIN924mNAD7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF581C7EE29
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 06:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168663936584.5725.2965733301508856664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 398c5ea348913a0e81468c40023fbebbabc9b5b2dbe73bf10ded2e61adaa1210
Date: Tue, 13 Jun 2023 06:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686639365
