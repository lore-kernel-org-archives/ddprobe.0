Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226A423C4
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TllCOnAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 994ADC433C7
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699181296;
	bh=k19JH/Iz0VWyudmKOWgJ4ryxgvcYFS3cxf/q3Amoc7E=;
	h=To:Subject:From:Date:From;
	b=TllCOnAwB3vOLdFstYgzw+xjtJo2D8p5A41blGXzo9cBEgUTuiBwrnJwgNyZR67/M
	 DE8XnLT+r2JbKRnvNJXH/Mi5yXgwPHzSiI7EZmTfNaUR2g85KBs3qxaCZ5PQmUePzX
	 3lRMjviL/yX23NReFKgMvZBO9RHlAYz2/HnBh8k/NfHogsdm+s8b9tq7lJGnAbi00i
	 u3Lvaj4en5xt0yChQ5eDRyJ7VuyY5BXx/h9Fia8FZ15YTwzJy94qQ3c1lPKvwyREOm
	 QLloqYgXixKtTZD8Q4BjNnuepwm+Skqfl//98afoK103lLR1BBGcIVWk/VEw6v5/8L
	 RtDik+7gkRXYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7887AC4332F
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169918129645.6563.6357052433150617843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55711461e9a27d616d8ce119fe3b2bbba7ba6d104496bc70443a3225445e54ff
Date: Sun, 05 Nov 2023 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699181296
