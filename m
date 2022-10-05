Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D414B375
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72636C433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664933453;
	bh=VMHc7+DeTaT1JD48qOlVWgEFQfdzZ9WtQSSecXWMBsE=;
	h=To:Subject:From:Date:From;
	b=HE4gQA90Kmiq9eSvcHEfJkcYr9h5oczVg0iNf8SmlgwsMR2kzoBkGNgCt4aNJ3Xvf
	 WvsgVU1jecAqHsz1yLa3l8ccYOzXxk/PqDUeirPDszCR1MCsAo7zeHZZwKgxS/Q8tx
	 RZdQQ1KNtTWLyUot0vKsnfYL6ztFSG1ByeuL2CwiLt2tGc+95JjARu6X2ksP7qBdX8
	 aCDy/ZzxLHZlUS1xzZ5b5p9oFdvTj7JkjLCmyP2Qk4W0Y+5ly2uEhTD1fN4NLSWoBO
	 TCPCGzwYQXAYur4Dtu7tAoGcS84iSMy+jMdz8YxqI280lROjyKM1pjwRpjS57eFab5
	 rD+oj7S6zTtwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52FC0C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166493345333.28289.17436086697308409024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86746d68f4c06b94e20dba1380b0eb0da0c0e4b94bc184119d02571ee1fc051b
Date: Wed, 05 Oct 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664933453
