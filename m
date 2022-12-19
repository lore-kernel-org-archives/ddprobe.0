Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E171C187A
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8951BC433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671455487;
	bh=Ju+1WZ/wP4I5p+eKjZi/B+vz1T/ysi07+mr9LDgHT3Y=;
	h=To:Subject:From:Date:From;
	b=Xns6WMNyBtM9ghgN/s29X27EMuuU1RS/9wnvrA7PqB7Ae7fGXGZrN3iTdyWrzr/dt
	 +ikZq0o+BcqG5v6m6NQuqAE6AFjKFq3Tv4GQ/hUIpkQ0PjX/P0vJRV1tNwYaHtjQwG
	 cWqgyvNWMwXDXg7zYYE6eIwvduYNhsm96JEMx2hywfHgMc2u8Vct2zS2NVRNkQjxnd
	 fOPoa1MmhF46dTiLtOzTWgJaL56FBDahsLVZqKJD/38tgIuaIvBKHFL48/yKMDDgPw
	 RBJvGRce3zQOMi/jVZl6zxxbmZidVcYZVxR6ztaY2k5tf+QAh8lHIe2rsqfOSre3Jz
	 3PNY0otGaDXUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D387C4167B
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167145548743.30071.14810678220858296564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b091779fe3400fec39c37c2930d6fe800355a82f61a238e0bfd26f53a1790e34
Date: Mon, 19 Dec 2022 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671455487
