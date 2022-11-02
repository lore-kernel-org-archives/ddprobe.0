Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE0E801
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 12:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65FB6C433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667391054;
	bh=JFyDYwbZ8NhwNtt9G4e379GhyREZEypoVfUsI1Ubkds=;
	h=To:Subject:From:Date:From;
	b=PTlude5YcBcVnfKTSFMDWa8aiVvlk/HBWBnq/JqWmmmW/B0cJ2JfaqR1YvF6Rzch6
	 DSsjcZFz7+YT/8Ar9rbIo5xfvDlvcfq4MzlvElUMDAHZEFyAWSPU2ZvXikuDRRW1co
	 9kTFjVYR/gQLTs6GMJll8+GZIzMDLKr+VNaKtkPvyjXQsotxGNmzQquHW17LeH0xyg
	 P19quzF3wDsO22ExsvRLmkWWy06pHd3C/B1S5MHZKfXGVaRRjCiNqJrpSnqwoxIJqM
	 WQ50avdZRHBU00BnC9WVUhyOgfpHmMCMWkoR25OseIYoKGXaq0zGz/u6FZOjfAjLf7
	 kzvf+0Gje3B8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC23C43217
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 12:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166739105431.1483.11878364938883668275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27d9fab97d3bd312ae23d7207084d923f922dccd1c3025bf0aed85cafa630f80
Date: Wed, 02 Nov 2022 12:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667391054
