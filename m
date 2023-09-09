Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513941851
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 08:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C351DC433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 08:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694247848;
	bh=NKWMlGJT34qstRfMK8bDmeZBfe7uB1P0Znfj7KUQidM=;
	h=To:Subject:From:Date:From;
	b=FS9xfLWc3lxaYBEPNtfrG9jbdUeZbJPKoUhvwpc8teS28Ix5uyXlOXinKfVBk6tf8
	 DwXE8CmZ/IlP/xGETnCsw8Wi8BXOTAf9uvQuu547Ek0nyQ1JcNJRPzgxkABWfLgU1B
	 vN/+6OGV1oTgxqrm86nhocTC16M5FJpAI9zaUkVR1Ohtaw94dKB/fwki5bfIol5tuF
	 NiOKzzNNnUeQOcecQuwCA/7IZknhIVSFtYkaUlI/nQIQVrpsHxZle4R7pEuKVYHkmH
	 Wy4WlOBnBxCjuonCYVgiDiBQprTknv9OG+px9n+2Cij3EdhM1c6QFZ9DLaXcVaR3KA
	 SS8fC5Psxi0yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A73B6EEB564
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 08:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169424784867.29133.6049047705127754030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5787507c9a0b88cb3db99a9afc110685a54134c592278f4b9475c160a9923b8
Date: Sat, 09 Sep 2023 08:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694247848
