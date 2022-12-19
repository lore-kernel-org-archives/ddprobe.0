Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8178EC2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 859D5C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671428487;
	bh=zb0XroI7dlMwOrm4HGS7SfS68zLBAbRz+xnlDRn/8a8=;
	h=To:Subject:From:Date:From;
	b=MhWnj8OJ+xYwjzhIjZYv7bqIjAydrhLVFOkX1T7Ws7czhYFvcZSs/PxU/RZLl5hMZ
	 V/fHEnlWq+2+LsReLpW96+uQrFqzcYPWKU/CM5PhSKFc/8PZsRIm1yYyKkOE+vHamM
	 YaCZyd6gRpQ3T3t2fdKu8ZyMu+bSeDcKgRNcEPB7xLbzDXLw+WNZJcbdzN/pPStZyL
	 yxgM48lyAx5mpglG+naNmgZvGPO9XNBS2QagralWKay/H7B3Foyn8KfXDzj8alcETq
	 Dks+X6gsYjcWFduibREzyLJ0YRp0a4Bga3bwmBIs/UL+XSmHf29aaYsjEyXLN0wD9O
	 uMaKAUUEV7qKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A7DDC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167142848741.25274.9912024721158233486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f76ecff8b461fac1cc2b2dbf01ce885b4dbcf680396eb1e08be2961d72ff997
Date: Mon, 19 Dec 2022 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671428487
