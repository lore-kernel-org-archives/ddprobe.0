Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BC45CBA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 15:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF3D4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 15:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674918186;
	bh=g1h3Vw+KqwTkIz7qqcmeumgprdwJ/3F/A154fuC3DLg=;
	h=To:Subject:From:Date:From;
	b=Y54f5Aw8QpbYFLZWpJEyV6ksy+I9/WRUztWOowua0KqfeTzROzoXFR8F5sYTJe5kV
	 GDbC7PgxcHlmg1UN9m8rCRs/uatwH19OKA7N/YxvfxwrONoaSxUy6vCV537DxcBVbX
	 zn50biDIMp1pb0yJvpfN6L1Vr/My2UFkt/oLB8qX/OzLL4WKqrlvAf6H404iAAGG4H
	 D2naFYc+BqlKQTTn1ljqtZupf0rh71vomBrXBk7AmvoXMX8Nz6ZzqfgMP4jzUrEBnA
	 QH+wX5InwN/i091ySRdjb/o8XnHNkoq+UnO1y4O/Q9q9yrDCjyWU7AabJTmkk3rUtG
	 SI8mnspGc8mJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA68DC38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 15:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167491818582.20415.18331197147121591055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed636eb0b42116ef095d747e469759fd360766d7dc10fc9c77587599ae94949e
Date: Sat, 28 Jan 2023 15:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674918185
