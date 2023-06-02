Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A34BD17757
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 09:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5B87C433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 09:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685698025;
	bh=8NTbPWL3b64ZkO0rrlzhuZo+aMJcQSzHghAbvO1TR+g=;
	h=To:Subject:From:Date:From;
	b=cCESVvE9+D5DF793YJ/ww/aeqK3rBT5CYsTW2WxZHLHs+5cOE5rTb9jCtFso5AsxM
	 buJyoE/DV0PniGcbCtZJbeEQT+MgPJQROtpn+gia8aPH8AB+G+lLK5/Cabnx3Kzi7P
	 Epx3VVsQUVabCqRstF+MZEGyBIdi2wdikXiUldJwuy1LX2I53TKFQIefOYs+RMtosb
	 jLMl+bbquATHYbIC8scMlBPS9krdy+3+XutU4fXo9tLPpyQwDOr+JQBfh20HNypzaQ
	 7bqde/pkuIGm812DzGzwt6dcQaub24FymPZsIFNlN+ZPS9bD3IvRAp33zgh7CozvDh
	 wjNBi7jDATrLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9DCFC7EE24
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 09:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168569802575.11367.17034300433684766244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba6057cf94bd8e0900c0a9d0746bd4cc7ea92d70920604376a45d79ed0a752dd
Date: Fri, 02 Jun 2023 09:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685698025
