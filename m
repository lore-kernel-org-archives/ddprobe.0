Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1034C64
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BF49C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666102253;
	bh=gdQHKH7Z/IuLoUfmTeFQYh0ISSEJKCUei+fytZZ01Oc=;
	h=To:Subject:From:Date:From;
	b=gHI3kHDb3+XiIl28RuPlaL0REBIIb6ylpuXHd7mJ6GIuEH+LdHj4QwEAUmsmQAr3Q
	 UeX3Jhqr7CBPNZfn8PmYXn7thdmpNkXtP/PwuFhuUUE3+h+a+lW/6DJnr0A+whwpPc
	 qsK4aDqZh/aKDLPDw9nuXL1epwKZ2roNpbdA68oEEzS4nbOyFr2vUZvEbdXW0bF9n/
	 9YQdfpkumVwZF60RL2IoYhsDjeptuKZT5tdo44zoHqtHMZAds0+APNdg/NtN7+dXo5
	 Vw+jd72UFpa5AgL0rsXnhvn+cf5YM3zrpP9q2qF/tUX5oowhgqSa+7n/3ErXYFMpfl
	 ilflUTjtOuyXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 548BEC4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166610225333.18932.4085207810059503539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c8b75a3b9c6629e3cb3a1ca0aaa8af98cd2be2cc723fa182d53dd5c07cd17cd
Date: Tue, 18 Oct 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666102253
