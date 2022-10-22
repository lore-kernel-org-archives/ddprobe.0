Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E01517B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9032EC433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666470653;
	bh=xW3ofQAw009Q0t0F0QgnvaaQGxJW4HPqMx7d2XzwlF4=;
	h=To:Subject:From:Date:From;
	b=DbCYInd2yY16zEXnbo3fX0CTP2pvgII/G/yB9vE6CMBAlV2rIUzbVIGeKUvjTUv3g
	 cPF6xUz6v5/itk362djoLkW6Uoj7A5MfAswYG415KJOSvBueaz5xX+zhfZVcNvc9r2
	 tNZYs9zXKgGVnTmjUFnKOJWLE8o0M+ax4mdrQlfMLgNBCDgSuRHjNxh6RMaf/j+zRF
	 zbwANMrPg5gSjq8I14Dp/xZwHKmOCNQG2cZGz0LuVL6Wj+QvSJegCr3Vs5Jx9n1sUj
	 kZDWQm+603BNCowYhclvMDuJPOh8jdU4FLG7QZlnLuVKzZiYW+xIblNc87t5iOYfWe
	 UGoKCB511ZWTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E0A6C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166647065333.19274.3541652264531282858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a43d6c31b18b03815a6ce68592e83c8b9c19386e3809add07ff2dd3148666dd
Date: Sat, 22 Oct 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666470653
