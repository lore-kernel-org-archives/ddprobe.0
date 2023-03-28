Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67CFEAD51
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 19:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BB61C433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 19:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680033186;
	bh=w++u5/uizDDB3ulJSCkdGlF3aVXNl+e4ow0WWZdeOgc=;
	h=To:Subject:From:Date:From;
	b=RBpOArJCW/vBPJCMKdN++jyJuxVMxyZcbOXrrFuIAmbpPR64gGOfzb+/7PzfxnF5x
	 aT27ilYCMzdnNEHINtF+iK6IYOI5Nr/3IHag8+egEyVrv/14+c3P2m4uWOtztkMYEa
	 xERPlMsPaufYz7O/HpoqyPYig5Lu9W0KH8lCE6E/6dNqjUe8MNRlcPCPa+tfLiLKoC
	 Jz5jH0YwOStaSCnQ1TpjPLOnJHmQ6gVWqeWLj27O0ideY85HeMWdttY5GRnVp52bdA
	 aIyR5IV6Fb0yvbWe6U7gdxJ5XJOUQDjjEHOISE0U7SK60kmXrxJuS+Y8s4l/xZv4Bm
	 2+m2ae5CPQ/+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9B12C6FD18
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 19:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168003318587.24704.17210092309567983878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f772640bec2413eabe136ee48e8611a78db026b210e7365c3da801d300fb77b3
Date: Tue, 28 Mar 2023 19:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680033185
