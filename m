Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8887322E
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83622C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671895887;
	bh=kP+zEG20c1XTmBEr83WAwbMzkGkr15TASDRljAI0lOs=;
	h=To:Subject:From:Date:From;
	b=AaY+RRUbS8ZfLG4yHdJ8OPHrcnK2hp/rjHdKdqrR7d7LursVTHAWlNH8mo+sN6+KQ
	 Y29acpk5pFvrVMO4x63l4V1px8BRQuULlVZmpLl0kiJ9A5TRY30wltAKW+EdIkoPTb
	 Tb+hbq7oYXWOXeRRtOYTXqqNU3KFSZHf6XEvHqvimciifS3hhjGQXTlTijLArI/0BD
	 tDr6rlX2/tWqe2XjT/s3VaQuV7BVF39zo10Wfaum8RFmNL5swnfBdysIWrT/t/nDmc
	 7wCYak215/eur65KjjooWALEhO6pVPaN8+9U/NgRue4JbGvq6YGLbywpTniJP/x7em
	 ZtDdUxg9eag0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 672EBC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167189588741.1972.14294680789635614629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5ad7412073dc21dca6df54165e9fadcb9a5c46ca0d5c4ce4f54bff655d13d0
Date: Sat, 24 Dec 2022 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671895887
