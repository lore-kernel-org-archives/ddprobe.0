Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4102C1A0
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjefUHgQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92BE1C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703270896;
	bh=xSBYtaXRHM7pE0bxXQxf5RjBTF+E6JSW04iOOsEwyw4=;
	h=To:Subject:From:Date:From;
	b=qjefUHgQjmmRjZ5laErXvYGwvY/yIMMP51KIy0BV57dKj7/2THpAYc7mY2GAsd0wt
	 Xh3g3hCXXX9Grzm+oU85XKXd/KpodLIh6YsaCvL5w0yr75tZVRjUcFxzrvg76T1uzf
	 ddoLq3xqprhhXRpU8S3RENiumFDusNdubEVILfu8b2psMFW5s9XTFiukLgxfURv2yz
	 PZ8vTV19vPCVU6zrFaxJQrgdTiHZIIoSVPf5v/ZcEOf9WQs0bjWqrC9gDq6ikg/QlG
	 efeelQH4A9sBXynYrqg7IizSBowEr95UcwUOLChh/Dh5VHvfW5XC2UGsVOzm9qMjIy
	 wAWjLXm7RqFbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D006C46CD4
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170327089642.10500.8809494782817544360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2431e2fdc6e37478944510077045ff8fd1674a7044d58e2a06fecda32c4f4bf9
Date: Fri, 22 Dec 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703270896
