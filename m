Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C421C26
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 776F2C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670020854;
	bh=ZYK+9ewiLUZiS9ntvpcWCLkllaExjakxy3h76SIoVwQ=;
	h=To:Subject:From:Date:From;
	b=qPXgxFUx46B94dGzb3b4sG5R9VOaXeOvIdHHgdv9I+xPOrFNkab6V2NNGIBFdFAXw
	 VubDT4wzo0gfXwfUmE4lAIq4jbFOva3BnLSV4LOiyyWDHnBCcth6y0AMwTjh4+OO4Q
	 J0mGtO/VyUQ1iSbB8G5YrM9WCalXBgfRN9VgVhcTnVrjPAcef07/REbNiKFir/rO+k
	 qcGSLQ5Y71pMzn9RsfA4y9Qi6JLGDIjzJzJNOkaxr4IkxkgFG/b4ZeAwMDFjAxl9ki
	 1TVbLeViTQ6zl5DVaPf6B5uRx8PwW2Jvwx14w7+9r7ekW5mjJ60uWyEeaaEwlodB3H
	 2DdXUoX7oQklg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D2B2C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167002085435.13370.14456392497316775839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2993d2ee4a2850ca159dc49c8d0fa5bdd0d8f9de6ef3d78a0a161bfc9a48f641
Date: Fri, 02 Dec 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670020854
