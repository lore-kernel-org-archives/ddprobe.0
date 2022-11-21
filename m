Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09B9ECD
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 12:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FAAAC433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669032654;
	bh=BfgML+Lg34mPibpYjtczQ9ouzpbiXDcJiXFjwPNC+mc=;
	h=To:Subject:From:Date:From;
	b=EWHXWNPnKVCu+GtOiktYSMW9I3r1YpwnZdtKLFgbqFXs9c8Jc5YEd2xUHD9rLqk50
	 QxlPZBAf61dlgpqCosC9DqMvtkTmbMfuR+HmfSbm1aFayPue1Fr+0BzVdR5Dav6PLA
	 2I035dsU++sEq0lixOrPJ11To6HfQEZCrUkrnuJ3LauMT/JsBjgabNmL7QJEUr//1Q
	 zSollYCoVZnmry0nGJ8CLgcftw6LUzuA9AlApvDh/vtj8d1jbflypBC66fOVFo6UXz
	 Z3eiJV45gi1Sh/Dic7pVnrUTIeipQw3JJ2ngdVbHvUhM9soqnGYmxHN90NDM8tGyA2
	 id4iAspBhLS/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67976C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 12:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166903265441.14389.753055390898104116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2482d51917fb4d358b939a274473dd1bd28c7211a2b35d22575f99ee3c15d64
Date: Mon, 21 Nov 2022 12:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669032654
