Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663AB8BE2
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 18:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E42DFC433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 18:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687716788;
	bh=GAnP0o0hf/QzwfrsPahEu8Q8Jsw2EYbCdL6pbyT0lb4=;
	h=To:Subject:From:Date:From;
	b=F9biEC4VBayZhqXF0mdYHE0u8gO1/fzPpnnv6lXFaaDYl7ZmdeFS9cjY7ITr1VrrU
	 NzKXovlM8NdCRS4In8sODGmWW+yETONA7Y52Y1LByZAmaM5Mc0JCR4Gm+AzdygV/Go
	 x7FdBl9GXnltnnIMrlpOz+CJP+B1YGZMzwlhGqzPTwlUpBEUnPdwiFcj/bA5GJ0sMe
	 rQ9vz00ph5zLo9rjKQXUxh1XOlTasDlEhzhd8u81eDQHDdhMkdYaMoS7sBgX+mxd8a
	 iMtYt44dSzyG0B41zf4Eq+xCevs3494ORJQa8g1bqKsEWkTHAt8FO5/De3V3OrpylH
	 1Zwn3XPelf05Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B5FEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 18:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168771678880.2965.16796750779936494053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e5e9487639b38063177995de1ca2c0e56666fc7fdd85ef238e1021b30d4aff7
Date: Sun, 25 Jun 2023 18:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687716788
