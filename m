Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227A3A938
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 19:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B42C4339B
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 19:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678994405;
	bh=fSs/jHqhRQuwXfBR8nera/HLoW5tswYhu3Ynw7IPcCE=;
	h=To:Subject:From:Date:From;
	b=bybYMlIFuzlle0tqk7LlMnF8VaCsQLzpy0mUuWHRng2Yoz503yUhh4B7CSpcjfLGV
	 thVXRlk06y6h567R358z6hX7mRQt7OfdNA3tpRuDEarblEL0XcsxEPF4BRmUEuAylA
	 e6+2I2ZJJuL8MAmMxRCKjpdlICCRLYFG1DVh9EWez0p6h3z2oJWtIKxYDTvCL51bjy
	 gpbXgemr9xm9NMiTipTdg0viI3HtVFbLYcofQMyxKGzw/ySWEMafuHi8fAzIMeUVNP
	 plX/nPvM7LGXzkignEJbLw6fWkFoWRiVmrI3cea3bO16ERCPBTuKOmIVJ3vuUoeVTV
	 tRrSdT15bIyOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EF7C6FD19
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 19:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167899440574.4193.4579887991265672715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35621d26cc0aa1ff44cad92943a33b5d01808f59265cf66f28b6ab6b059003ae
Date: Thu, 16 Mar 2023 19:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678994405
