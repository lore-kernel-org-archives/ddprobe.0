Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C555D5CB0
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 727BAC433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667887254;
	bh=V2g5AeICwGnsabFDsodNomerR2DNhw1Rh6PtDbYf/sQ=;
	h=To:Subject:From:Date:From;
	b=RicIcM7bcONQClzYQ9kZc6+HpvqozmsVjiWR3gyv0foXlg8u48x4fQo/AYl16485X
	 bwRAb3o0XJSi7CCl+CzgCDmE1kClc/rhT/CtM8bhdigS2OzKYbOOdikvpX6qnBAQus
	 tIrRsWA3sBTWa6vpveYhT4Oi3zd6GgR8iWdtaV594qX+DhhuOKdUoBkC1aobaVsoFv
	 tlZjbLojBvFlTeqM/Qw+TvKUfBP2ItdfMXUz8HZ8H18/OYts+SfIwxjRhonzL96TDC
	 NBgHGDR5fuHj58hp5N9e6N3tGqP3DWcy4Ly+Jn3oGtCFviI7UFuLc+CNyaT1gN2yxn
	 oi6rgiv5AtdjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54BD9C4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166788725433.18327.7796508589409107526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3fc8bb15277cc65ce7f8aa2a28d05b996bbeb3dc376ac963bb53d7e02c805c5
Date: Tue, 08 Nov 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667887254
