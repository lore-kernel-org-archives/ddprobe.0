Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBF7510E9
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C50AC433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672216887;
	bh=Ps5M85i/mhH7EWqmV8xQWv4Ynus3ihaTeGjDmO4tIz0=;
	h=To:Subject:From:Date:From;
	b=gWNvIeNAJ9Qwwk1xU3Wm/pfCJDNCQUoVfkUQbtL6SmB3qu7OQpHJp+lMMvgkFZTp8
	 x9MrT+fgIzJXDFwdVmrT9pXzE+gRjTyh9/Nbpw3alpzbJhOXKn99MpKc5asJd8Uu0k
	 jrbdZOqV9FvdZjUxf9eKCmuBxLgwmPLKvMfgWhGN3QTrjOfbiPNxM7u6RuDKzkWfji
	 OPS1IYygR2YXO9O4xNdI0i7lb6XlZd/YtAYG0jUSsX+qkIwdk96wLxRKgoAQl+E7IS
	 oCRUUNszikZ3AnQvHY7zVynxMorvhOQf/vADhugEIiwPzYPEKVnNS3kA81wHZXk4Rd
	 dskeZz86qviAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E22BC4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167221688743.29178.15321494000905991288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21c0d43148173fb36f0aef45eab3ed537e79a6a8f37629d61c00bad94b3165ed
Date: Wed, 28 Dec 2022 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672216887
