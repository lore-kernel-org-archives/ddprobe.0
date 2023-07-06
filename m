Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87CE1AD44
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 22:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA36BC433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 22:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688682429;
	bh=xBUrMHgT2MZJ1guyb9n/HEgj65UU6ki1wsjwt7S3mgs=;
	h=To:Subject:From:Date:From;
	b=trYUIlfq3ywtjWGDgqF8r9BxMMXp7lwTVp9R8E34yfRCuiPiiLY+37WVMEtFrFBfI
	 ThrQJawAvrQtQe6/1n2geGIe1oCbyRfrlhPTzhccInvrdyUuuh1Hr3r3Cc6mJQPzSd
	 EuluIDC7wy0KK2E4wnG5BTKK6nZP+cg9Y96NqpaaZhL9JzOjve5rVkUs1xCfQFBMPi
	 0535kOwriz/PLhQGXo2+X3SQ3dFp58IM3pHwyMzJALTjU7B5L6bDAq4ieudkgGuZ6U
	 YMJSE1wUQPLAqmFHzcrxdOBsM1YG9eJGIwXWVKfd8GnC1xuYKvfVRWjVFxiU6NISq3
	 p9tmcA01PHVww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD0D1EB64DC
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 22:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168868242883.1730.6621105706380713240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9220fb244e400242c6e457848abf5e29526938f9f5ee42840218c04b18f8c4c2
Date: Thu, 06 Jul 2023 22:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688682428
