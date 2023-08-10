Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FEC1E1C0
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 17:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1043C433C8
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 17:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691686988;
	bh=PlvAbn/OEis6fVfHDhCzAAGimA8qPT3J8H0Eyw91Xa8=;
	h=To:Subject:From:Date:From;
	b=gTvxL16oR7Hc3yDJogmMGx4R3WLA8FiU6FrusqbeuZlr289xdcYpDFYmtlX3zjCrj
	 7VBQpNguFIVyVF3h/FC0vtPlN0TRON9ua2kF3W3+7Cw+mZJcgxYkV9JNDO6ZooyOBD
	 Xj41plFTTrTGDuwkkwHMspl7TweoNqESmbJCgOE1BEkeNlo05wqYP32x4DgX3uh59C
	 pJ1Oo0dY+0ykNUO96b1E+7RwSMlZf0r/kfQuXtUUSRxkkWmQ+XFUaPEXbvsJ0nz6Nc
	 wZ5z0kOOHOWiqhyFBmwEC65b34E2VNx68YOIwqe7x7ewZt6+dNsujKJYIofI4g61yX
	 UImbF3wg3pc3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E44C001B0
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 17:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169168698868.23713.9588610145947085040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 101190aa4189fe9e0a39c7e93c6534662d2af651ad337ccb2927c536d704a94a
Date: Thu, 10 Aug 2023 17:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691686988
