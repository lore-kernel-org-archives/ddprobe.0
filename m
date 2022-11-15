Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD10BA5D
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B4A1C433D7
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668531054;
	bh=QDRzDoh5pBmwu/QeWAQfizcRp1NUk11YvxWRbyEBoQY=;
	h=To:Subject:From:Date:From;
	b=tq0iVli0sD0YiT7OmZ1y2ryxA7Pt7yHLkZSZjWE/BvgsE1OL6UNVTe6efBsl6wjfX
	 l/IB6+XIiEC/j+oV7Sl4b89GNe6RYwWJup5rXiVUqoiA9mDhj9IEto4axMbXcx2DtQ
	 +sqJXXIIAUyIBkj/e4QxT5IrGWrCkZTB42V+x32sYchY1iKw6DgGw/+7Bzp/h5AmWh
	 jjhqBufeD5GUWuMo+DoC9gUyGFqzA1/Hfh/LGycrfYcUeOUnYo1M7dEqZYQkwWRBrX
	 QG9SueUp2q3Na24TOoqWclDZVBD1c4phcPwI3ArvYqyWNXjlfdXyOEF2CEmg7qh3bV
	 P0jgil2IqoSuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53CE6C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166853105432.2682.11699587916142444809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3069b2be42a4219934c5f95dfdeddff6eb8d8759c10282f0035ca9284a96f82
Date: Tue, 15 Nov 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668531054
