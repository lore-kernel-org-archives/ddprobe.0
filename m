Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2BFB23DB
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82BB4C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672405887;
	bh=sVMxGZe8Y4OE+IWeXDwCsmkkBEkc4MhMYY8dXv7Ws9c=;
	h=To:Subject:From:Date:From;
	b=dVPrGWdvWYkLjWjbfGQmhvC3seSUjkfXl5amnap/36hdRyfPjFuN85+YlHo4HD7HP
	 lEF1Rhl1g/WWDfxUueJs9i7DhizPOB8et5GrCs8pXY5LDtA7Y0GDJOh1cEa3j6y2sj
	 0pV1fUar9hoOKp9iuf3A5ov/BErgE4sbRU3qK/sG+gBC6fwIGwYCUhYO9Tl7If9lsy
	 WxK6t/9XzEFCVm7ax1GooZnHbRVuhIP3JboeNvhEzAhdERX9lIcmzqGtYOZSUhZKnm
	 Wo6jGYBAzLeFkwOhLKfKQlZJGrqTWFcPxTOdo6dpqVV0KwkmX1OR2vq2qKrGqEGMGs
	 uKOAqXrvlzLXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6189AC10F1B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167240588737.16706.4906346516919880964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 689df61a6ee78fbf305f33fb561edef7d51f2268cad7fc1fb82254eb5af9b1fe
Date: Fri, 30 Dec 2022 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672405887
