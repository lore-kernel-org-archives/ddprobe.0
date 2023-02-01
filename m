Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D8E2590
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 12:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D564BC433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 12:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675256045;
	bh=cbwfUS+k45cIMDzp6U0Jgplj7whmh8WINlX+y17wGNc=;
	h=To:Subject:From:Date:From;
	b=RPgAbteHruqfsJVwBfxrrQGjQokeNl5+onU1wbroQaCqKUuAW2gGH2wb+ENNjNWhB
	 A+xcceKNvUCT6MWxKOAJ+VfJAgWVpUwgTdk7Ab1vhSNaMwT4MHBn+94MX6qr4p/ben
	 cWHq5XkNuAMDW+hqzbj3VtowMhErhUQg90yh60Tpka5f8xFuAyqZ6igtWhV/Yh8zSi
	 +srgco9FQRVXnoXWKGRS79EipGwfU4UTfiiVGfMk3YW9rgqZTeez0/We0u/Jrkj2yi
	 8I29fjk9+MH4KVkJCyuMLDZT2P8FlReTmoXVRaheoPa0EN3xsk7glLoOZXcFT9A4G8
	 nTnMFhok+qFVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD2BC636CD
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 12:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167525604575.21586.7826930075446141351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dfbf4500df77e940c0a143c1e5a9276a7e8486a3f7ab7877c30c959f1ab966b
Date: Wed, 01 Feb 2023 12:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675256045
