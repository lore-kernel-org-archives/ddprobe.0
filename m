Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5BC12568
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C691C433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663529453;
	bh=bIexKhc/LLAsoXfeVfBWt4wX0PIolYz+KdoL8HBD38A=;
	h=To:Subject:From:Date:From;
	b=HlDKIgXfzNhhgsMtMJwas75+80WqsP6tsYDz6t1zREqrv8Cc9RPdOPJYuwrnzG0WW
	 xX5uI7dAdL3fnMehD7IJmt69Lgkv3Rjp3ANM/RGKCD3unS40QZdQZARTgpmQztAebo
	 +lUQhKWNoc9argotU4OFc0H30ZhYMB0Z37FZfMZHTgNi17Xo56kE85qJiwLCJ02BD/
	 H7YshYyrzbDTg6Xnl7OmSl5w6fohCVFnNm8YdnyKmsCOk573e4dyTYmCE+RXLT3cjf
	 J42P/iJv6jRW0G/yXPCNlNqZ25BHvMOqAOvqoQuQQF+rph55BCcA4czrXshSNYHtck
	 4DdB6EWOO6WfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F966ECAAD8
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166352945335.29303.15489484931598478835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eacd898d0a76626f921682a32442ac82faed499cec8d83e5782a9c2944d5abb3
Date: Sun, 18 Sep 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663529453
