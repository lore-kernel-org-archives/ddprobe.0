Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24E0F9D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 20:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7625C433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 20:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687380188;
	bh=6OBacOmNdj0V4/FbRE9ZQrJLY1kBK1pyR6oKVGG5VB0=;
	h=To:Subject:From:Date:From;
	b=gksHbHkSxQwLVQjnoC+r+My+G6MlRlqLcleeWXW73jHmlDXaIzCQ5wJAU5DiiRoWj
	 PxL8J/U/yCy0d1XBXbGxZ9Tp5osmuPLFKt6zB0Aex6johuj8PLOnt0Ed5Tg+YUEq3E
	 eBGgbhbW9sX7GIdLgW/yD4PyNFzfmXwPMN5ECsaWKDVr8L0eXW6sxFrzcSzoMhC/XD
	 2ovP7by2C8lAWLPa5t2MdeEZOvuVQUo/iwyUIcDw9BFD4VesM7R25msa7WAG7XlWg0
	 oPotN8WkKMoA24OtQyO6v6TuUzXWVogNHtsQdRV3Nw+A6DSkSld+0Fmg5nGufReLEQ
	 90IhhAGKVqo2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCDBEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 20:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168738018870.26182.7258450830564160936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd05f0cb23d648dc0d8506ebb6599e5aa1ff88231505bbe4b4d0a4530044f3d8
Date: Wed, 21 Jun 2023 20:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687380188
