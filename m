Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B86227F
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D35CC433D6
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664076053;
	bh=BDTjxn32+Tza05qp6LsD0JuBZeqQ4UOkncDEs+7ipsc=;
	h=To:Subject:From:Date:From;
	b=Tbcosv4oFVQ5fnMC7zY7QZ53YXZYUstJBorvPrLn2NGDuXmjM/RXv2VT0DVYBWD9h
	 JxX6qFaA49uR53dwzDKhTT+TMQLcIuAYpskW+CEGPOutgTW1LmvWYyVywtfHkDhIlr
	 0LYc6y0xj+zlFuu51E9inHQZIATNv5BXooE3GozNHuv599wEgUnril+g0CTf4eBeAF
	 1UayoT1IVM8xFKpITt94AU0uH4AMN71BwxaioyYWztqpM+VArTXrKRUKVM4Dzeey5W
	 VTQwwfKtPAgsIRtY8LN+roCM+rH63Gi0vzfqu2tJFyBvLr/DvVs0nJOZ5Ef6tcCKB1
	 E1C9oyPcahPjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52FFEC32771
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166407605333.25908.8617347506984650200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5dd60f1a2f891fee9750c589aef41be84d72da22c062a9a5c1168481ae83381
Date: Sun, 25 Sep 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664076053
