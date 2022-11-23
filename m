Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D64BB7B
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 02:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81516C433D7
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 02:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669168854;
	bh=b4hvDq2EzNyIAKCjeh+hL4qswFzVT98+HjfvdqiXFYc=;
	h=To:Subject:From:Date:From;
	b=VU/sLxHZGH9a/4+arZuvELxdEmuubZgOSkouopYbdovnWar58KhWftgBNWsRp4Nne
	 9HTfCY+VjobLTHgIg2JmB/tWNuo9InY5WdLUCMFNhAOSxXRZuJFoApSqCF9Y7OUYWw
	 mnPIZCOVKYJ4KyZTZNio9fPsxKJqxBRkKz8RXDJtiFpMeIq2dWoZkmLdshbN+vmz0v
	 UfUoAywZDVqYUSfxQM9XvJp07M8h0fgh5ot2hINpDFRvWG6rhLVG8d9+/gVJAWyc03
	 iekC9nHq9ReoCgUYBwMmRhIffIyEZtOG8Zi1J2Y1WFOPYybXuAmdKIOKRyB5luPLsn
	 Jyeai1cuFJ4JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C393C433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 02:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166916885436.21391.15682647997577232371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf26d10a05b25876c86a4072f947bb1223244d9922c7dd4038959efb79257a93
Date: Wed, 23 Nov 2022 02:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669168854
