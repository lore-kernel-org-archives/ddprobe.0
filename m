Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568DF653
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 05:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED37C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 05:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693978448;
	bh=oTGKmXrpcsKA4NbOsUnLulrpZfhI6Ok2v0NNkQmdCg4=;
	h=To:Subject:From:Date:From;
	b=ZNqyYAOTPZd2mT7FbldKx7wXiBbvL1Fvmknh0IKAV7CreFZh0fjZQSJ4O3LY6UDhX
	 /+gI4ZwTzdWce6AxgNOC2L6CFADGLCKv1vC7g04zkmNVhsrTtQ1EjLZLeZLxWDgQWw
	 LdOOgnuQ4TYEoK+8YgC35z2hDBvNUsFYdf7swtG+d0wlsFMNtU5S1KIk5nynCBKdel
	 SUg97zmw3FZv7jvG2TUAxBeZtmZpsTinOqqWITw0BkHBzpRgS7C2en6/X4Q/NXWti5
	 N6rPD9IuFiGlZzyQbmV4H20M+R2oSVq+g5zLbfsKNSrykg2Hr9fgjy+fppmzoaYKbp
	 eKqDEqySn1pqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FD5EB8FAF
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 05:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169397844872.6602.7154060657130220701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4f599739d0bab54d30b9ce42b617294575fef4dde3683a3ccc7e39fbceff16a
Date: Wed, 06 Sep 2023 05:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693978448
