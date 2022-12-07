Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBDF117E
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 00:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72C4FC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 00:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670372454;
	bh=qcptA1CE2GdfQTZ25DyO3tBv1GemiLrOEPBB1znuHdM=;
	h=To:Subject:From:Date:From;
	b=pv9Ea0nI7EUZ9HJVV26M14C+zoBEOLU+RwOhjxNqPnnd7Z3y8hWYFFvZu66gDmWJW
	 gw05uWhQwwrsFN71DGP2DOJmw7JWCkfYiGtahlBz1X8QcU9IGH6Mv1uIziQ0UpvZGi
	 EtkoD1WACQNEeetSzpvp6ndciCNOY7NHUhZb7o9iUvXcUcgrH5KrR6WrYtv/h79KQG
	 0QvSV0jYgD+SjTzXCpZ5qpkiQ3GWWyOMuWnTLxaeWmO2OBXiRXmK1SpgvMJjJS8o/L
	 2EfrEiUGD3kn/em5LYCKVemIVtFj1KJZfBlxeWSJMrEHdueYcpsBomW4aW8FT3j/+4
	 fbeWEmarxK2gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C44C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 00:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167037245433.24281.3170449502348638038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2c13711738ed6f53cfd277e32485819290137b944bd9cdf1944b3ef968ee793
Date: Wed, 07 Dec 2022 00:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670372454
