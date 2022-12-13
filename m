Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED5F7F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 927C4C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670890887;
	bh=yF3+PbePVaKlONtyaSDxEutu96IzqUpO6tIT95i2ipQ=;
	h=To:Subject:From:Date:From;
	b=XMl84GazE5fupYbfntUQDJkTfJy6+2/p2A4lH3X6DFpvVtSqjD49KgdeHCaxxkor1
	 amrzcWdLGTMN+BSXImJ4fiKsi35Jcg8Tr7+LVRIQrPkeMPQOqvQRmGSJJtFRRBHl1Q
	 VdKSy9136hsLagxITTpbRlwfqB/0sYnci7xFn2yZ25QiK+ZcxHC6yBsBvseTliiJV1
	 QT8QBCMXTVxTSORm1EIIMOJi3Ed0LfoojtBjAlaBo9Ob8By1xBxdAf5mB5VZSjXPuM
	 KNRYmK5NJ7frrqa6nvdvE6oJT/WG7n6T/XMKkVpRMGnaOpQTIjS58E1KoPM4i16STD
	 WbYH3tSaVBCqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74B24C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167089088742.12376.12770136298764570777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dfd390a62a375e90000b1dcac8be5dcfb80fe31cece368bc8049842e381c9f2
Date: Tue, 13 Dec 2022 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670890887
