Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B390A10F2
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 00:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73967C433D7
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668385854;
	bh=3wPZx8VrZr4i3xGeaUQ21TMhTntVRTGQFiHjfHS82FY=;
	h=To:Subject:From:Date:From;
	b=mIP+a9DeDvkgizRNEvc2hPHFH0tQPgXTMYBHZy7TqXN8Yn+ETqKPx5hvYfULxRb9Q
	 rQxfRgNIc4MuqZ1lRdBvVaDcHcyqJwzMb6fJJfUCLioCjJR7zBLpeN8fUKa/ma9HG9
	 HK3RT3euPNG2GqRr0tRL/S3mFgdNcv3RWCuqEAQN0SAVRvAHbFHQwpkO/jNHI7GW99
	 BxPb6eY60Y2tvrigsGT3OXNZe6n9mZu+VY5M+lTdQLSWjhzcR9yE/Ah7ZgGXwLEIvi
	 gSiLWIVj7/9DNMnWsNw7PeIvBgG1X/4bOoYp0hf74G43sBNbtFB2vpyVJ+fyIK7zwt
	 RdzgbTkT6FC/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AA7C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 00:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166838585434.11558.7772830393697756796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84cddd4f36decac24f9907fd510b59bce08a69a053e3d89ca1db492eb86f0a5
Date: Mon, 14 Nov 2022 00:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668385854
