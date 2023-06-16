Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7A58F63
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 07:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA365C433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 07:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686901748;
	bh=vNfd2hzn9KnAgGzenbs1KRk6RASs82a+TTMeMo6/yew=;
	h=To:Subject:From:Date:From;
	b=urBoYqMjl+2YMsxlG4MzSxbauNBaKLM8/3dFZD6sMre283+StTnj4sXjrPT1ZYZlO
	 exNFZDj2vQ67JCJIx1gI9GJIwgb22u8NuqhRQGvfGj93h4K/XbtQFpBxt4Y+7K+7Ld
	 HXi1rk0KEH/yUZwSE9QJWch2nU7k+kfUg/ysCZbA1MgLE9lzctGB5grWXJtOoemDml
	 Sf1rLZAhPO68PQMNTuCnoaC9Cds7jaKIzhpZvgstlW5gaOV0ii5FuY//4bSKz2K7kP
	 i8LKwwOtQCv/gJVQ9ueWh3/pcI7bRUg+91jH/3YN+ku6aMaZZSattNOGhh1vlIaOLb
	 NHIEFYL67n5aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE62EEB64D8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 07:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168690174876.31872.10716486296008247084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d77c96b98487ffef2214a1971f28e64bf730cecdef8fb57746f8d23504a3556
Date: Fri, 16 Jun 2023 07:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686901748
