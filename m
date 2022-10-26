Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5CA810FB
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA27C433D7
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666779653;
	bh=lRs6ZujcBZjPoE1Ono7qGUT0y0+x2/+FwstAT1LAwzY=;
	h=To:Subject:From:Date:From;
	b=bQUlcdur4THtKO4izUK1UN/Axpxb5FHUXv7DQ4mwowhOa2lyHN+IBFXjH+WJZHjmT
	 qBmfVRqWq+M1YkAYo88tAZIgixxM2DOVLkkcZMlPTE++ssXzVGnogjxiHPdQAX1nV1
	 664Xs1XIGzh9ZKEJyXWNHsUTVPJ0+4ZW6c+uBZJwUDtohPUi+5YiWmXhaFDU6fuqVJ
	 tfcBhIkBv3wwGdUls46bp7R1eXefFi7yVm7+/FotibnYWX/n9OVtQftsJySx0D+k52
	 lVpedSansRNyEiVgzkjhIWsPTGSyz+zpm6kkSx18ZykrTOP9JwXUhmSNsA2wxH8nNo
	 +Q2Q9SUd0Cz/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 513F3C38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166677965332.3655.8398620420914162324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba0232a6612f44763779108d4b401ff87e9b62668bbbf56731d285d4606ed7fc
Date: Wed, 26 Oct 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666779653
