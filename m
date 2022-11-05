Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A30B1C3A
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 09:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A471AC433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667638854;
	bh=90uiLrHI5v1fU/1OXhqzyAdWWFfXo/Xg7GQmDqZuSuA=;
	h=To:Subject:From:Date:From;
	b=l1yfqKkds+WkK5lbGluOgGEz57W/7F/ni4yJkLdvkJldbR+MyiaTuL4f5mpmRDjPm
	 SJMbnWMcA8wD78Bq8cWLfViMQj9PP5G8FcwENrM7AnvSWWdpFGadje3hwKa+1lLc8f
	 dDiAnaHC9u3Bkx7oJ7W5B9Jl5rQ6NROOWzzXQL1LGa9eUk9WhMS6pZIXVLSurm4+Ba
	 7uOGkmxt5zN+JPYG/aTOkgALNKL/BHEdiKaPwRlUMpfpiO1CN9jrFR5nO/LzGfqLZT
	 K+psVwt9QTRWqCkQ67k4QPpwYyjLP5eHRGnhdWTAAXNlM9q9ouk0uq49GC5KWwZylA
	 MLKz5pr0kqTeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85A46C433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 09:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166763885450.1684.14611313395124713396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8816961a78f661777a6483ced04658318039b3f8b6a4cad90227815031c40789
Date: Sat, 05 Nov 2022 09:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667638854
