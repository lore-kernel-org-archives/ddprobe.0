Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4A427B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69BAEC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669939854;
	bh=uctMsS7bXgHwnllefk/J1hiVxmH7gYR7jVdyMnKojic=;
	h=To:Subject:From:Date:From;
	b=tvT6sJylJL4QCzh/3it4HWdPTP9d2BSStq79ChUTJ3EzkPBCPGUxxWkVml830egz7
	 Si6PEHGMikpRiILU6FZ8YIt3P1W83wEmxZlkZZqfeuI2McVqgCMWLZmlZsWFhQyrTt
	 Jch3M1PcyNYeC0q7cx7INSARqCdhIFc7AY4b/ZGXu1uLRP2EZ5TGi6OY8Qy3TSV7TH
	 5OCZlwC+hQin7TITMwWDRicEoMq9kN4fbJclkJu8mTJ5SJbONaLLc/1vnz6lFAa0IW
	 INuPRUp6TtqxQzAy9x/t6EAWITDIdgWhEqEmp8euBJPbTKldLXysengIbE+WUM6Evo
	 no1dtJv1zsgFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F8B5C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166993985431.28913.8119555391255862971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 308296420f0282ce6812e4004fcb5dad9a3483997b5c54d66b2da7148a8871fb
Date: Fri, 02 Dec 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669939854
