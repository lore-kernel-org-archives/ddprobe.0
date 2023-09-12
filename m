Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDB018027
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 10:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03E1C433CA
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 10:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694514848;
	bh=HkUMFwngsGbL3kwGyb/DJ5Sh3iewOvgd/dUIMindkw4=;
	h=To:Subject:From:Date:From;
	b=W3nOHYc6oyxe6ha+zWsvX+Gmh0Yd+q0Ob9sae8iDKI9kdhkMYCXHh4I3w2Krh3nEa
	 wogZ/G2zbjKPv8FsNN0YF6t2YyAGkzmBkTbPeGNzTGbld62oSOVhoeHtIGIvXkMpyz
	 Re6NDJYil/aIYd5ZWeUm5vLHP1v9G8vKiy1awcYzQHun2p77Zy3ZpZTwnmx7EoaDA6
	 HsVEvbvFp8h3zXTUHwKHEKLvpwdQFUCdL3QT52tU8aYGqiSKgc+R5BuwL/mqilM7av
	 OY12dgvjTNO9xym+d3iAySbTdwZXR3k0O+BnsOWFOYMK3ikBo9WimXVXixSG38lVd+
	 V7Te1R2k3nDwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A72E8CA0ECA
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 10:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169451484867.25391.14710628336253849075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5735fbdd2a3dc2f570f778d2985d644042a4762f15a99685a7450470c40b216
Date: Tue, 12 Sep 2023 10:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694514848
