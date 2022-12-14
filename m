Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E4528EA
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 14:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 757E1C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 14:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671029487;
	bh=wmgMpmB/Vp4/NjhFyKxJXB5kuon0lgeeIZy3o+In4J8=;
	h=To:Subject:From:Date:From;
	b=VNAU3DIdZh6yf86OiVNUFe3p2kC+y+VYOI8sNE/esXZqXPspegXFgsEqxQGe5SP1j
	 8dmscMflC3jgMRC1gca76wsWdh3kmxvqcwx3cNvO80ltq25c0BHIQgVsJauR1vavEk
	 BywxRZqEb1Z1oW3pmjavvjwnSOQT0/soo6D7vOGYYRNZTsjRFqmJBM9T2b21Lh9jkl
	 whdDUxvAnKK3HfZlp+sUPvPQeRg4Z7tRsaaeEq26fKUCEuTsdlLQZ6eKtZaYkZpngJ
	 f+m87sqZbz9v700xELfhgMdkY4040bp1VH+ybbuwjYmTQHcUmqpBPqZ+v+Hq6fXRUW
	 Y5JVZzs4XkYbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E05DC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 14:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167102948737.29139.14543647173375535577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b304b746f76071144decafd65b2fac632cebddbaacc6ed9a5700cde45c874607
Date: Wed, 14 Dec 2022 14:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671029487
