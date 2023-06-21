Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F08FDF4A
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 13:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C37C433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 13:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687353788;
	bh=7z9YN01omKU/HtNKSRw1lECKKYWS3FbjGzw7av4DXqs=;
	h=To:Subject:From:Date:From;
	b=YPN6Q2HytBVZTKLEhmWj9iMJcZAF08xzJmp52Tv5HnDQwC2DM35h+iW75+9sn/x4H
	 Y6Oun0b5MOuaeRwt6sHIGkEeUmPSU1UK8YHUx4GDRuVChlkEiUFk1tUl/ctHvs6/H1
	 Z4maK+Fyq4ZqZ/81mXDrZ5lLmhJneMfJwcceNWhlcK2ygXGYoVOGL7bKfwR57usRXm
	 rI9NU1Ko9rk4vwIJrivY19jQiTyWCX4+FCLjHd+FApXqdBZ7tdVsJuSMn+ilI3YcOl
	 qlEYIYuRU87Htpfx63JRRkPiiw+MbLkF3lti8g3WfG88mUBZevPzACkojdy7lrNKTm
	 Kw/qYm9k0IQog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5165EB64DC
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 13:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168735378873.20657.14728706465981631580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a351f823b520e10cd6b931b1723cb7d5ce22821e5a5d491497f9b7b1450a00
Date: Wed, 21 Jun 2023 13:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687353788
