Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D65138C08
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80CE7C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671233487;
	bh=nqJtqZgQUAAwIc0gQ10Q2bBRERIb122gbQFdJKYM76U=;
	h=To:Subject:From:Date:From;
	b=bfS5LjHEf58TEkVp/wliTJ4e77iSLljXZbRZjbLcsMFkblBC6bFiOZhptLyQuSPXH
	 Ifvvth0GDEK+0/LkBSxTuhuDmg+8Y+kq929DFVt3WvkFGJE7k6rgD+4wktdl67NgL9
	 JbWeK+L+h/IYDp8bLC5s9dmPyyNKGSuT6+IkgS9BxE6VBaNI8ZZFx7nZikDP6lwvmB
	 PviB4BPOEC0ybb/3ssjXvlpyD0RXCMArILRtPSgr5FITypFs9PkmGsUaJ9nnDP2zQ5
	 lAPXUkM6mhT9YokEsXqGn3zHyCOByVmC625wNdO3daN7wm2fjnoKSPNc6VpIGBPTge
	 LT3L0ma03YBkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62876C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167123348739.5722.5073886776668452903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373450bbaba476e43f50c987072953ebec3850378fc66c411fe9f8260e84f7c9
Date: Fri, 16 Dec 2022 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671233487
