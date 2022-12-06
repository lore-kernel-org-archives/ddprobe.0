Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A31194
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B359C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670289054;
	bh=qvn1SDmvtPzE+6WNT9n/zec5sES8CS35LoU7RpOt+bs=;
	h=To:Subject:From:Date:From;
	b=GazAitR7ddFnhPotikcRv27IZdbGZD6N6DRtIVSCu0wVgC4laToFzvjOH+A8YNuJm
	 myr8Y0JX7oc5qKHVh9Iya0HhW7v6rtvwF9zOKKXuehj9o9q3Lufx4gq1ykporsCdue
	 cOpKAVHYHNn8blm9Jf5D2yJOZwHAolxfB4My2yo05cu7HiTQm+dsYtQD05A6ajLRpM
	 mFKDHN24dlPh9OycOR9uzUjdA7gpxH91E76KwxY/uxkRn1cmrFaVaXqLWnZlz/l+9h
	 T+TGWJuoA/6M4VKGD8XebtdcS9vuHEbDcs1Ek7kQP0QnWDddNqrleOYndAOUkYpB1C
	 sK3TlDjYZ+Igg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 615F7C47089
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167028905436.22341.11530501271714918401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ba9a3aee6865a9a179e8fa7f403e1c3475b5c96292f5b8097b714e8b02ae272
Date: Tue, 06 Dec 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670289054
