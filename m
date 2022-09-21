Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9C9C1876
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69D00C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663737653;
	bh=ShPZhjFucuSAQWY6Oy7n0b6wq+SCTWCl865OqnJkdVI=;
	h=To:Subject:From:Date:From;
	b=LI+3qUmpPbWI5l+A9ryJIJWK/RzgjIzlTiop/z8BWZzs7W6rHup/XilL4bU0ZrzJX
	 itWmdLOHSwytZ6B1Yvn1Tpg/Yc+jv0hFNS9GFG4rI8FKCcEQGgxzz7cv1FZKmmwenx
	 yoSLqE8jpRF1ujNdnfGuBHM3xa/9OCuGmnr/XYTYw6te97SwiwaLRvabvi7ZO16kug
	 bQYY4a1jKQXvXkcMQFC79gx5DjqFDn37PxhTpnXjZeKo1YuYSyNT44+jTUWvFjxCCI
	 s7y1EssCUZaLRL2f1iAb6eAjZCajLWwoSx1x03oJpkjrLVuP5zM5/6cmCctfcxx25o
	 JxyhvvLPhppMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F0EAC32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166373765331.2880.18364164882821864768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 607f5d9059e13d995dc4ce7d350d10e60b933ed8e49107fe94940ee0b2b03afa
Date: Wed, 21 Sep 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663737653
