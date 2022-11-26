Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5AC17CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 05:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F0C9C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 05:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669439454;
	bh=Xy2Hr+wyL8CmduiUzA2i4mVWsHTGBC0IGF4R8GA8P8g=;
	h=To:Subject:From:Date:From;
	b=RDmLehqqwZtgAdOF2u7QZa95Cz3F9EsB6jliONlVZJ5W/GJSQ8PAc+efAGmtxpsOX
	 EzSB9Nw9hSlyWamItwygas2pnvCCkzNVQR8lfXWdE3+NLMDrIwZGAbhfOaIxq5pU5m
	 iKvFi6ZXM4K3iJBYkNM8BfSDgC+En6fTBY8AAQfZkAhMsajStDJBA+OWe6sBwjQhFa
	 gWkNiWUX+xb1nWZX6/2AGUTsv0BLtq59NVPwZRRdHu4YD0qtEumN8EQuRt64oJbHcB
	 OFjjWuCZ8LUhyCcYYS3/Yjmf7sMP/gVv+4lwKL668vB6Ni816YP3IQMN0T655rCD3p
	 94ZwCCjduBe2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 524C5C4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 05:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166943945432.29149.11650174055989239077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d01decc9874cae9ea37e020502de8746ae16e5fda186395fef92086fd7b8e95
Date: Sat, 26 Nov 2022 05:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669439454
