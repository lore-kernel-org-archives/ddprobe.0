Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFEE48CCF
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ji9IR4KH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83F12C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704893896;
	bh=65rjrd15TjQXVALTULWN3LaYH0H0K8uppqtncE6JncU=;
	h=To:Subject:From:Date:From;
	b=Ji9IR4KHKgFTgy+Cypen9NGuV8gYzqYNDtmaNFkjkYUW12d9n4rnMcfAgpmmOS0Mq
	 iKVk2l9UVimef6g+5xTeIHhUX3CDfY+0cpKnX+YqJCCpvFXkfDnvQB8Z+Es+j8W0gn
	 OQu8daySUYX/rMLxBb401GW1g03cjNGqvXQEIzfvzs2uEoFzKDYW25zCTM4wzLfwcA
	 B9ivDjBl+kr992kDfErWfjU7KVfJ6vVNDZ6vlTL2PuIZ/NbmCk7Ja8abKkZZJ4ARTE
	 Bbn5Az0TD8crKgMuAqbwbJaF94HSPi02dpQL0tbfvz/AEqRGU7qQSmoZwtjwFI+6Gg
	 nN0SpfQv6A4vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A4EEC4707C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170489389642.25527.7664091922485043122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 018a3de0b3b44c2855ad36bb41555d84cb23b08db47160f72bc3531e1f837e2f
Date: Wed, 10 Jan 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704893896
