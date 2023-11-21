Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F06A51018
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8j4XzQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ECFDC433C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700608696;
	bh=fObz077Fj5jMYJhM+NetAdBqGb7ZT9EutMM8P68tOL8=;
	h=To:Subject:From:Date:From;
	b=d8j4XzQdIWN4Q07eUKG9xLj+Sq84EH9g5ePyza7d2XBzGlUEiDH5ylZUVH2/7n+tw
	 aHRcE9Co+C3UA3Iu0lZsnHUBWWE4AmV9fI/dWVFqQfvbA7jb/57N8fdpKAnTqK2Aru
	 MzD5EQLxq87ThBrLKQ74rvcd7G3LJatps9z1zQhy2tKVCMBFB88h7KRAriFWg1WK8a
	 lWuTlvEtsnsrb+PdLZbO6zlf+6tzj6b3vTCIfKnNyZZGKSGdqV0i7GPYw8jsgjyoh0
	 Rqv0yt0HNloeQA9ot30jch5v6iN8skIqfZDq/FBAH9DWbOKzCtX/qxq95YujEgrmcs
	 xNZAHbsGsRH5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60F8AC61D85
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170060869639.23088.15687406499357001817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea82f29c1c3c7ae792375b64f6589f6deed3314e3dcd0f0a4e02efcbf9a79dd
Date: Tue, 21 Nov 2023 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700608696
