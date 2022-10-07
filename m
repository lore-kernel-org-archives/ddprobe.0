Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2AFD7E
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 709E6C433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665128453;
	bh=RQB3/0zSPNKYj1X5buJw0HuMM6Pr7MgBrjtmFvFpdOE=;
	h=To:Subject:From:Date:From;
	b=g5023daSoHgRGWjHX1XjANjlitq1IRKutbcyq59evhtuNqrdmKttfj88/jUk6bjdH
	 tFVIzK+yE181qfYuk3Y0T07zIcJk++6HaizQFkUSjghQNvABZHKuNBW4VPM+QdOX8K
	 mYOWRVnz/weOSN4EZKFIkOP9PwidJ9gP7qh8TohCj/SEvqe07y9EddDuPYE909EIy3
	 2DSDusr4QXgXwg+IC2/x/Z22Qb7IXpSfdOQMUn8fL2ifCBZ+Zc6wzM7vnj/khaQVOe
	 9gUzRp0kvNPR0eyYB3Fm7kybHLIfDIgXEfoqKg+KG7u/bxBdzy0Py/UNRw+sMFaaqS
	 sKrLQGNHRrG/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5641AC433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166512845334.19921.2612538384045687369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba244bc95be93b647153cf8854e7830cff3940741fbf810a51f4b351ca1ce51a
Date: Fri, 07 Oct 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665128453
