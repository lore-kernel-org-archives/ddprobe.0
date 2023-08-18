Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668E5648
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 17:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39F9C433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 17:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692378248;
	bh=4GDArOgR6KVarlDrEZ++UwsWKQurn0RqXiVGzy6vPWw=;
	h=To:Subject:From:Date:From;
	b=HwUS6oPY2MKXpcMbNgb6GMEZtQ/bGK9P04/gWvkJzmiILdXCm681wk3AAffo4W3n1
	 KYWGEQbGHHgUAsNWkYfqlD+IJ4pLvagwGO910G0PpmCy8wK7GPo1YPUk4HvDd2wO9w
	 01kdVyWiLF1FqE81cSITcXPoQHYTq9xf6FC2JBk9ar4rsCkg9/yZGhL5G7M1uK9S8k
	 429aeoOxUvbx1Ju7Kr7VXAEi+RjlyY9FelTiZ3w/o+q0a0bJb0VljPk5IAC24jH55F
	 Tmdp05Nu5X6sKprePdFYFRJWNRFLj3rz0mjiV/SE1SvqGpQRS8oTzJL15jH1/hzlgv
	 9YYRX3wopAwaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8DEC71159
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 17:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169237824869.32590.14898536112761523858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48dc878f8f6d32759b04617d574c1a0b726e6679852cf7e7177b27422dce017
Date: Fri, 18 Aug 2023 17:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692378248
