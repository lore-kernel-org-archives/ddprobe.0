Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F0D7B
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF6BC433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663889453;
	bh=GyenuapMCxa0qU+uLfz3iPlJH7BZxSJiFpGARjElhg4=;
	h=To:Subject:From:Date:From;
	b=UO80afdM1/hIVTySTXmICfmkr/crZOGUqb9DskxN6uC1BcX2Mn8s4VrjXshAGoxMF
	 2gzBx34hZ5rVloCf9V+NlQVN6dxaQKA2hm66hxv/5VrSFrdwbEh9QZZJLf/ycalwbd
	 SObBS77lepPkWITTEiKZ9b7eqHlN1GL3E7IDChOvpMuwvJvNLKseVGgcnOoA55ix2K
	 QTQetE+ZB14TBAlsoTW9ctFdGvVZ3qD0UNEeTz/jR6mJLBozQp/YrSX5rTJQNs7nbl
	 hNdKN+pG47C40Eo3wc/io6L4ytv51pfAdW6AAyQd+PRUrswaoqildjZJKytGOl/Y6y
	 WSSODQNEZyQtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56C88ECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166388945334.14675.12216886984482701217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af97648d57e6c1ffd3af0a38d0c2c0f945f5bc3e0eea5223cc0ddb937e8dd92e
Date: Thu, 22 Sep 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663889453
