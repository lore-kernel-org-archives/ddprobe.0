Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9DD10F2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8627BC433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671604287;
	bh=ps2o25TpPZGMRvPtucPSKTOg0TNe4u0Fhu2Or6YlF1U=;
	h=To:Subject:From:Date:From;
	b=YiKaOxlSXOCe4l7kY+k76nAr9LgzH33ItXdInfxEob9hX/+EyafufeGS7svsaaat2
	 gn273pjxrp9VD4sognXTCoN5KG+wzeAKNgWjp/oi9qOQPLRuWzo2rQus7dG6b6Iht8
	 p/EucvLUtKh9xTYKR7Mhvj164LzAmMZY/egJsbWzM5XRv1IQtw7o3y1mMJ9tqqLTpv
	 hhh11uHoHA4xEh2HUb2OyjuwmEi3zR5zsojAkC7DWvuOw5g+g4JHdZ6YXlitTi9Cr1
	 tdCGGzYcoMbbdStQvF3uvHbd6sh9YMn0sUvR6P8k2/6hgisPwR56WvuA98IxBmT+4q
	 NvgSTBllExDuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 697FEC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167160428740.10599.4426762309458615335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ad0985ad527ebd19420a9ad22cecc7520ba5460fb05ee042fc9d346572ffeaf
Date: Wed, 21 Dec 2022 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671604287
