Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5C52F2B
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AD29C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671834687;
	bh=dk0Q8l6bJrvuPuADiNbEsVbNbN+as2QokPDwu9NsZLA=;
	h=To:Subject:From:Date:From;
	b=mCZHQlN8BbaOswZ6cnU18elnTd6qTIau+p9vVjCwLXszlUMHzpc77XWpJnklomSkn
	 Ni5z9Y3tbX+OF/8YjQu3S+xMRlR2mW+UuniOZv4GxSvOFcd78iXZSF7L7cmUSNWtcx
	 n2KDPgiNGmk9RFgkBqE5BNPjzGHoJBs7gXHFNGP8uZ4kaRBxmps5uyyGqTcfG1KobV
	 i386glA8UQyONJUHh3nBK6hq3byKXvNsB9sAnBXEr9eLKIReCphQhy6A+UuQEIAfsC
	 MUfCeJR64ct+QhWxRRUXoPiLj8a9hx9pjA06Gwp1iAlGA4ap3DBgV9ia4tN50RSVt5
	 6qITWIqV0dr6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64544C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167183468740.18768.11813205992582911156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ee2be34f59750ddb26e719f36d18360eaf8835f59433c51a0a4701ef757f44
Date: Fri, 23 Dec 2022 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671834687
