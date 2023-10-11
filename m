Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C9B18C08
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 07:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDQjDVJm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C186DC433C9
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 07:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697009228;
	bh=aolysYj4r7pWEN6IezUVFlfGyGGba7NjyW5vTY3INBY=;
	h=To:Subject:From:Date:From;
	b=vDQjDVJmXSY2GyB4LdOXFX6Frq0f16QgZLg0JePkKsejGZnIrG0mvFjbKKc6mzP9I
	 KRizXGZisA5KQlf1n4JaKE06hMieN7VdSNh9IU8TXXMYIV6MavRmKkq8qpqVhtDvs0
	 N7Rzwy4Fr18Q6riE0KDZnTWm1uwvnhAsqNo16Y9l49U0bl8Rg896AY3M0GFhSJdX+u
	 aRYsNkD2EMWblTGZv2exlY3OtvmMyy1qEXNMT2wgUoqz6sDve9zZFefPI0t6TEMvnn
	 KraEp9HRZiQdSOs+siZDWGicUebxk4xvpIIi2iP7hLuK9kGADRL6e9Yzoa6LrzmHVO
	 r61sjCMWS/zQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5B40CD98F5
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 07:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169700922867.11671.15409936012645361768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69a6fbec58dc7af72f1f0b89d8cd450691fcc8919c48a1f9d2a4c64f35514a7
Date: Wed, 11 Oct 2023 07:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697009228
