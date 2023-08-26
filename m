Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60CA137F
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 01:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF986C433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 01:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693013048;
	bh=yd8iOrqWkz3Re2vz6HrzDIxQ+ZUGfF5pfyuh5ubt6qU=;
	h=To:Subject:From:Date:From;
	b=sxmJcHkn3Mnm9qxwrRw/ebJq4+PhVsA3NBAbOIO7oCWNtBAKbU/QhKld9D74D5VP+
	 XSH2J2G9PvNKIMWtG65yUyBKPeiow02Qg6jytJRgYMpKwk51McRQUi0GwgxsSM8UX6
	 K7ClHqNO3289Vs+9QaEfUuoC8pi7Jf19Znj74wIOt1tbrh5uIyEOFcJv1Lil/nmfS7
	 GYQ00LXlyavyOYToPQzNYh8fswbtHQ6Z/wHhQYDA58WG6BS/jt8OkwGvtY0a5CB7/F
	 IkVNOmfpiILVOOxqQWG+c7OY25fJnJ2A+h1ZFSH2DHXi4Kcf8iQFJZ75ySaqGRFOZr
	 EwZ0CgXZHwH8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4891C83F0C
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 01:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169301304866.6862.16034929735099128059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f082a5a186621c46be44e75db88c398998a53596c775e274214cc544cdc5cb16
Date: Sat, 26 Aug 2023 01:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693013048
