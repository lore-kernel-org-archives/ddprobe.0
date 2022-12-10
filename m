Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E23E9A42
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81E96C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670637687;
	bh=W1aAmpWbyHpT/ITLK51vbvvzAQC2e6Vm8ojvtyxNZeo=;
	h=To:Subject:From:Date:From;
	b=Ena6XQ1SiEzr9Ah9AoDmqJmIBAWJsOfwox2tlb+Dj7jDJynPPz06vNWXeJ8Y99VgB
	 jg3gnECr58qgdPkGDq+74s6yzT1u0SnbYV6xIXnndOWopODd7ukzpfIIlNFeJJfXP6
	 2c7l7BW8T+157738JHaNofPmYLdImQKhWwZ7HKQpSB8L+0utISj9jXVsAkXJCBBLb3
	 dbjWBakebhVqvLWOXoLzBFUY/4dZZv3XyAWFR4aRyxTKhbw2HjNMrPXuep2Ak2nbAj
	 NcNJsYeea+ynj7+r3isB47PPtKGxImd1hAbg729Yf195DuWCdRhAG204LO+B6aEcn7
	 Rr4qcycMd2IZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68149C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167063768739.29822.6495095847249548624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 458fdf3365b2a3c6fa9949acfe9ae950554f64916f2ea2bbda79bc761a904a4c
Date: Sat, 10 Dec 2022 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670637687
