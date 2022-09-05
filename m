Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECFE15A7
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 672EAC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662341453;
	bh=1XUjFzyHsRH6FPBvTYqMqDLdrQh5ltHjku1bGhL+B0o=;
	h=To:Subject:From:Date:From;
	b=aMaJGRNElC9NnxXmonzm5yIAG/TYLkLTmXRBhesgQFMQ/eYkVQGjxoagq1Tfe2Yhr
	 mBDagHHaTfD0wx0+jcJJlE3qNXIMs42EFGV6qkXb9LKAxgf2vDzyZ9R95bMsutOQ7P
	 7nBgAhrjfIeV0AVDjUAuTtCh4mX+RZJ5YXouXmRSoc2/Hd4h6bhF8X+Ve+c1NwS54u
	 0BUw2p0cKGM3ijUEzOemc8u2VBX9izj+YL6v00F/RgaygfU/XuKsP+HIZqYPso+z/B
	 cMTSETfJKqE4GYtVNhygPElTJXbZM4Ygl4HwmbKocRgrczs7LTBBpw8D2Uzyx+NhVe
	 WX8yEsFjTttdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52738ECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166234145333.5542.5844943276255651100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da7ddee6682b6e5fd0ce2f65b8f25e53f5110a6c75dc6f9fed7f0c2f5765bd32
Date: Mon, 05 Sep 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662341453
