Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB4FE1FB2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 01:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71DA1C433D7
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 01:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661477452;
	bh=G6E+oUNviKLEJRdVP3qE12RYZ4pK7gTtjNrNrncss8M=;
	h=To:Subject:From:Date:From;
	b=ftBBJCGQmnk+/UiyYNaLeDOAhB9Inh3mO0SGqK9d0GT/GaWBx+gnUyds3JMgDnhXG
	 6d/AQB2i6HOVsnnNPzrMS2NokCsMtHPDE16e1JIFF3dRI2lojX5laOexcZdCEoBDeM
	 OENMrn+fcMkm5XNlzlYQwePKyTBu8REpHujFEFzTCL11hSw/n1pbyz9TnsrvPFDjGd
	 V7jy/gJY+fMJ8iFgZQfAZpN2nfOwKkJIRNIgNnQKSgfRvF8N9U08iMleTkjow8mgFo
	 TcD7AZyKloquIvD9MmtXyZcLcIbnF01SAs4zLZ9LcnwryFR884Y3hJK2sNf60nsvBK
	 uk7+x/uY2gDkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58659ECAAA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 01:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166147745235.28664.6045198125772420221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa3087a09abe6a834e1e905efab8feb2cc2293ec63f56bdbcc9a6aed64edda3d
Date: Fri, 26 Aug 2022 01:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661477452
