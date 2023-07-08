Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A751D1842
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 06:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47AFC433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 06:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688797628;
	bh=Z4kJHaBJlhUS+dd3WTgV3C7fCLPFJw8HLM8JlzuBekU=;
	h=To:Subject:From:Date:From;
	b=qM6Ue9OvOJWU1L8x7taih9+dkp/JOHf0aJ2ER4ruTntEjdn9tlphortX1aTNRw86K
	 VEr6JwIQQ7JWlCrMOGaXHGQWgQiNfMf6bxA+6gRFCQ5oloO4m2K7wq3XiE3H8r2okw
	 4BGJghChlRVhKn2t22wglJHRdSLRA+2YFDrekqpGzQizgIAaKHEHI0pf4r9XGbfHTT
	 /7qjrpdpGEe0AKdhAINUYmNh4bkCYq1l77Hxxs50i6RtXol0OTe336Vgd3xH/n6pWD
	 3bgZH2bASMWmpE/KX79QUPqB5WcNuXrOHStadXY4q9pI6BBwMtjcvyIm99+6XvBmDr
	 L3qYNJM6lTL0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A2DEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 06:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168879762868.9662.11295116797998402203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd0cf46a7168deaa5888ca81b02543ba60f21d8a446dc25cc44ad77bd571487d
Date: Sat, 08 Jul 2023 06:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688797628
