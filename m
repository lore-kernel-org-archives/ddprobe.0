Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393A45C8B
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 19:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1772C433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 19:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678650425;
	bh=2zSVl+ezf9v0dx6qG61Nt3O11hv0EMsUbktIoZ1a6WU=;
	h=To:Subject:From:Date:From;
	b=VQbEjzxwqOXQ0mlt9fdRgBpHpADU5ZHPYaFIHpM7e87C0rk0OciHtNw+bJePXUfyp
	 /whV4b7t+a8VN1UjK4CHfiIEXdBuggNcSAxy3Mb9U2qJOr7iwxCQGIblLTmda+J7V/
	 IuJ1H49hS6SS3GHwYcDu7Ebe0FjXa+yS9op4cJF4hr7nW94RpItDD2sRBz3RmFjdEx
	 +IDmAcIawskczh1iOhSZPWxZnkVRbAspexyvfkAg4D0bZ6PHbLPgrJZHld0bk0PFEr
	 IZNxk3dKQkENZ4O6rhTbigMOO1yM/fOjM35L7LxjS3dx5BE6z1uu9F3Y8QxgrFhtBE
	 wzVFGx5UURECQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47A3C6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 19:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167865042573.28178.6426136010650121449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8304f2aec79e2cbdc6579b5f787bf9577930d292a1099d07741d5a97ba07e2a
Date: Sun, 12 Mar 2023 19:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678650425
