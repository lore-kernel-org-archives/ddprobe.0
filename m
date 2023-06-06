Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6CC0360
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 05:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 173C2C433D2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 05:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686028326;
	bh=QBKQ4kbuiNCXeJGMWgq5ylTw9xfMx/RMSL65eCluNjU=;
	h=To:Subject:From:Date:From;
	b=G+Jf2nKjjuTbZBRXoag9z0vVZHv0AZDlP1ietO9eQhNdBZNYSNR7GHDz5fBWbiO/Z
	 8jC2DO9wZ/rxnTvi7nyqHCILkh1/uWk8wQFhyAfCt2PZtFDbHkSBt9cWYx3KU5a5kq
	 8rvngJZ4mrY+N/QpXQsOHlVRXZUS1XZ3AYfTzliyAKlBh/aJXnfrJqgOBvHswccfUN
	 S19YlIFxF0tq8B6ekklrNWyrpBA8Spm5X/9aryk8omUTeOxZJQh6SyQNs27N5V62sJ
	 ijwGaVVkcxHyclxee76X04kpyitdO9n2fYQeoeueUi97OVSiooeCqVrpOu94Qn6PuR
	 /+lhRwOcPd3QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D928AC7EE2A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 05:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168602832586.957.11405522573952057106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9339dc0f54716d72c6ae76799a55913c4e6d50a8e69f384f4e746063cad381ab
Date: Tue, 06 Jun 2023 05:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686028325
