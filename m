Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26FA15CBF
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78272C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670341254;
	bh=/89b+Ra9CU1xxm4vLgB3iG9NrBVMLE9CFOwhza109cE=;
	h=To:Subject:From:Date:From;
	b=f12udeA9bVruQ2998gQCUIbDynChZqXO6UcgoeYxY9YhH4jsOOfsRCpxZ/qQ9Frq1
	 BhbKa12+Z0OjqpO1S1l7NkAjXV7LdPtqpiaCYWOOrJuO7RVdUjBBsZOKIQy9/r6QQl
	 K2elLwa6klFCSYY4qP+SOQDZXP/f/skl8Zr7AeGjQe2tg75ymQRaiqUj5hg+a5Z34I
	 POWCYOXEtDPwlCIL9lUOAKztbmOfhYSJ/PyB0aAt6AzYVxGtURLTQeUKlsRkO+1QqN
	 Bb5g4nZ4KRnV/ciOdGdZf9WHHtdEEpn9ZLYJ/g2QdZb67mdPJkWdIuI/1jI02mbJls
	 oc1HPm40LLDGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5938AC4708C
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167034125435.8802.3610139924074001236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a72d13220f22e52ca3d9c0cb8170750c578679ee890e201de2b6b8e797111bad
Date: Tue, 06 Dec 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670341254
