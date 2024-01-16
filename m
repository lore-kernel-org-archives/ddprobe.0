Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD3979C3
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdNesQfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CCEDC433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705378696;
	bh=clDmxb/lEyU/hkowXf1Hb+gn+2mKnB1ETjj0NfHUanc=;
	h=To:Subject:From:Date:From;
	b=NdNesQfOU2jRnfMz5IpyOiSjdwoYfafik6OxFjHVzXKQl6Y/CLbgls7Mxhz/ZZglG
	 3npAgN5KoODTDhHA/oYlUxaDfOJkfu39uQGKQe3kH8tjTDA8+BOw+kitEvclXaDWgf
	 dNVTWGsPF3Vr1me60TKT8U+re1dhkXsKXmMEcq1tLfMYXvkK2wljiKlBCfHnI/Uqjp
	 A+wb2rjEr72xKrQ65j0By5iW8Q0HApDzUOtK7N4T6WOswk1DMDuLURXOneSyCqPbzK
	 6lM3x3Zlw4CEVmeKeYiX1exLcJOpJT+d/BsOtnHyg+ujv3VKtOYdCRYV4mx5UeIwbE
	 jx9LwBsIcow5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F61C4706C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170537869637.30599.7182543618978444162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15956e06085eecad34d9de435a634777deeafb6fa73948a319eca0145ff237d9
Date: Tue, 16 Jan 2024 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705378696
