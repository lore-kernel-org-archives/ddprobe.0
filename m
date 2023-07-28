Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E96E23AE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 05:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D355BC433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 05:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690522328;
	bh=yCXH9e/AwiZ4Z8D2S/Ov9jyECXI8b1DnaKdIyK2WokE=;
	h=To:Subject:From:Date:From;
	b=BUQCZz9kx5Gc6Mxa2gtd+CJNgtwY6Zs7kmpFkgnJj/lo1hCXKcWb8GKn38g/7JHUF
	 r8+G1S6CCWAm+Qj0gH+XIUnORO0EHImtfk7mGEGn73JbBxQTZSKx4rw5gxV/rO48rm
	 MEiZalEoAZIl1uqZ2NRIcggHIHr7fzeHtdF1nYsO/SK/LnzNkoUvvg3QhgzuomK40N
	 l4/krBpzE4u6huvlCjkTqHlTV1GULZnLxpa7EKOWxAMTE1jG9+PGKns8RbAtFAI7W6
	 H0COH+/28NasDvbX4PbtMQU4vo4ouyCfDmvXXnHZzucLKz1+53wJnvLmc3e8jzAGHD
	 9EW51jPK3Et3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3507C001DF
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 05:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169052232872.15359.16439378965108399879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baf96d25af25be8f8a8ab971280434907a6fa13af95a66969fe087713f7a9b6a
Date: Fri, 28 Jul 2023 05:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690522328
