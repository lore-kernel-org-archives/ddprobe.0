Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD056EA5
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 20:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AD79C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 20:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669062654;
	bh=CUZho8evuQZiSwLOmuF/Uhi5oJ9YzBCbbFU4lVfKrY0=;
	h=To:Subject:From:Date:From;
	b=E4k/qqoYMPLCsVx9rFqsoegvDQ65e8gEtvELprjSaZhmgssViI4w7u3eT6loEQapr
	 oUzTCMMORCJFrd2h4FItfWVZq+cKUGUL4YvF2gYRKPH0FstVzwHk0dOhF1/MLQj8ds
	 Pm/nEQ18Pd4SjltbOs6mten2E4qNVD+ACYHLncu3THcOTKr+fkFRIgwxtPYpJmW5c0
	 bcZVg8sSnNHzYpn7NtLOIHSL5Mtu1NcUjV8uCeZtrPzvA9y+eHq9+nk5twG7LAezN/
	 XGQ8ogtd7j1qfwABsJ/JucdJVmBAtFi7SfzhAsKpOQOxaMefFv6FoF4Obt39uzX/PB
	 AFM/3V4v2KTHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FDEEC433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 20:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166906265432.30073.13556665070106068046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7868904d17fc1ee157f14d48cd98db168dae2a007fecad698066458db16270b
Date: Mon, 21 Nov 2022 20:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669062654
