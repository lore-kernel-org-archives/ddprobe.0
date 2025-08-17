Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF851A841E
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755422994; cv=none; b=EjB/0RoYqBuifwJP88GRFxXH07ur+lLUdTtsSdjIZuPAT/Ib32DFKh5Xi/giMN3sLk2ytTzeg7/g2Or9iXVi5sZ/GFh7hYCxdwVvH7osqj7ztWjWuF/4nD5YLxVazPXHJkqbUEsdUynu++5Gcv1e4Evsqcwj6IGdeLzRH4ZO7qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755422994; c=relaxed/simple;
	bh=1PAcsGmjT8y6bAGFNh6NTm/S19B/BE5eSNiFk4yZxyI=;
	h=To:Subject:From:Message-Id:Date; b=Hb3V0+XXqzt9mlCbcSCa7z7pL/aMmlpZtjb07OyBJlj2sKD3kG2JXSKFHlZMuYt0JIJrbn1aOEmPNOW9ixeUbh4CwMLG2r0lYshJvKBEDyzizLdwUa/oL7XJEdDltCs1Qjf7I1K0Yhw6oNHOatj83WJLJHGAxzFzZAYfidGIZY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsezTfmV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsezTfmV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A273BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755422993;
	bh=1PAcsGmjT8y6bAGFNh6NTm/S19B/BE5eSNiFk4yZxyI=;
	h=To:Subject:From:Date:From;
	b=SsezTfmVJFa/yVQeanxKquh4jDvFbm6qOVHnOxxoS0RWeRV7EpJN0QujhNAgiMy6a
	 aVBHkUyIx4bFo1CuIaZiK+gxXRG8f7gJmmHsr8M13bOzNCrhLn6yEtwJSXCDSFRVGC
	 2VglyTTjUfTdk0judsb3uc+CXC9u+lRf8rs1zOV8ZdrhZlXxH5bRnqu6aiOpbK6Vmd
	 aoJ607K6onAUBXpDEDVJwal9se5HwhDGegXJRPUPVFPSChx5Rncddo6Ezu6xwxeNn/
	 UY2O48Zfc06e6Vr7ckTG/JF6offHRf5wxvzC9jjGKAzefFZPdbgasTcu25aHAJnGKt
	 w347W/5zYFRWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9158ECA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175542299357.8807.4858930292059408393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2abe37afde9423c9afd9d3d458a37c8a51af192e8a8009cb1184bd6d93fe9616
Date: Sun, 17 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755422993
