Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFFFD378
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 03:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FA5BC433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 03:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673494287;
	bh=Adiy16sL2TzwBKIjqaIaFdD4Gz4TNZUhxGAxFwqWjy0=;
	h=To:Subject:From:Date:From;
	b=mIb3pjA+Yu7iizCYYhPsH7vpKZSLlPX0ir43u0mXOEX6ztuLc30sOguS0gXRkIcYs
	 nOxMaHBBm05e02YqcONtaMBN181nDJu7wWBcFma2wUZdUPwGq0sFfvNPxU5tWt9Ew/
	 B1OesE1lT9OIlnGDxjGLyHPJbLq8nnvatK+RPxb3x4M2GKQ4RPBG8CsHppqQlL21R1
	 h1XWOayjNxxMShTkdI6jXHC0rzaekQBiNEcDO0B0Ta7rAIPQ58hCWsPQAmyotRqqwa
	 eVmagnSsfpGITv51byI/cSfWYJuWfGK/uR+TMoJ/cRUYnFZHhLmKQtSnQtq8RXoqCG
	 LI4p0nIW4hJgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E38CC54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 03:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167349428742.14644.2458246665577574081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b60802bfb1c2fa3f18e863be7761171030220f522e99a653cde1079972791bf4
Date: Thu, 12 Jan 2023 03:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673494287
