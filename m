Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26C21870
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 19:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 702CFC433C1
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 19:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661368252;
	bh=Ji1FQXd7SuJOVrHA1sM3PGu9Woj7QltcVmtYIoMuYpc=;
	h=To:Subject:From:Date:From;
	b=vQAUFPOrqhGNcN6mFzxIRHlQ221hr873h2+wGB/ctdfV7eJWl9NCqV3Yizo0nrHap
	 UwAF7RY6ikm3+2Me59DQ1VhBw+ypPXv1SRcxP2qix/vIQCttBOXXwclKPex2VIVOrJ
	 QsWkXqgCCKL51jE4D3FRkXe6FrcGvlvZ2uST8+5Yb5AoUJ1iJKoWooyBjU/pTgRsCw
	 mYHmzMlF+NXkTBCI3QOmiJWsQxH+kWKSSK4nNoKUGlwpT68YRNrTTALWum/9tXFiDa
	 cRzREmmiFtvMxSkBKVIuvFE8ajtQ+DD6x0+BQ3TnXvhz9vsOZp1oRH9660tMid8xad
	 30JeEp3OIk3/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 549FFC00140
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 19:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166136825232.8127.7603258139967318483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 435b91a5ab8f21c7a2a37eb4622a649be22b3fcedf20988aeeab3686456db0fa
Date: Wed, 24 Aug 2022 19:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661368252
