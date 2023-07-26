Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9A37C
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 02:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4EB4C433C7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 02:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690338128;
	bh=Yyyctdyv9prtpeK4hZBZdHY06VShiSLhmbbU0O3WvNU=;
	h=To:Subject:From:Date:From;
	b=na6uU6scU0u2JT3z2fJAPlROmjRqomDxC4GOL9En0ObNSsU2d9k9txr3ltz2kvrp+
	 MT9Dkwskvsw3VkMTl52kI53apFwAmjEctP65VAnLzs4zXkXPQ4iqqgwccJxZaD2Xgi
	 EsQ0u+L3/Gwt0fSybL7yaQY0/ZN3iXHlOA8E6FrOy+MjU4PEk9hst5Y6HjTzwuIMbZ
	 1jjMhvVZ6HzDjhLajQX+xiaanizy1ogGUpfx0/xT0cs4dGbmauh6o+u0lcwY7EdCe8
	 J9IFl3dYtWDsuHOoJl/E96Z7HOql9kRM2FZVyalDEvVlwRpzH9ElzmSQazjZyP6qA2
	 leKItvu9JVD7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF149EB64DD
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 02:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169033812877.6145.4217655728866921737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cccb1eca0b382f6fcb64511f8d59f98ccd9f539025a54f836e601820905f6e10
Date: Wed, 26 Jul 2023 02:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690338128
