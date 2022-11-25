Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4EA08474
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78843C433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669414254;
	bh=x2qNTnt8GhllwSBmCp3Tspjq/FA79cHzznSXOWITilI=;
	h=To:Subject:From:Date:From;
	b=oljJgRxNkv6woecR9+bU/OxRLUOZulYWqtx817ATH3nr62+VXTlEPlyX6vwLO22N5
	 7Kz9hHO7Vugg3uQ1m8e1/YclfqhTPsEYfE9KftRT46C9yS05xXuYE4PxR0GygCFYJX
	 UZnvlIw/q+XcPoR22Y5f/i0C7D3Im9FQo9tBH5gRtl3zHdUoVfwagQO7vsXrtJhrOP
	 RXoM85Dub1TiMLqUOzg+U9KYsMu81iwrAD7GitkBXNYlC9tVu2FPZSoPSV/LIDPY+i
	 dLonx3J+lsqJk/aXXfP+FTIE5V5fs2ODZ47jojBKilP31EtWCnGE6SBNrL4pesoBeF
	 GsmHlLFHbAZ9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ADD1C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166941425434.15089.5971461887252737754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f483cf189bbcc1fc8f4496f4dd8016e1fc9d1140664c9d13518cd90bb3efebb8
Date: Fri, 25 Nov 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669414254
