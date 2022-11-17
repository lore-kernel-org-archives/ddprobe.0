Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5F668BFD
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C0A1C433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668716454;
	bh=pihRC2j0OHTd0Vs2jeFw/CBHHGME5ILOqN2k+AuK+y0=;
	h=To:Subject:From:Date:From;
	b=l03GD8Yq2kSpn7iElzlcy1dOmGMeDHUbFddSOhlE+g22WdLKY/mV7LD5vQg1oooe0
	 FA+HGUBDefmTOJGmlv99kgAtatf7wvYeTGo6ePGBHfAa3c/7+RueGcpxR1TmOCoa0M
	 rWa3HaNaz4fDo0MsCacUjy57gB+nDnhyzFM7jwfy+3ZFsRYdwXgdj/G6Q8dagu2CPz
	 nLCOSBvJJmsHoXytcwMFSW442jIFYWSJQiD2xJ6V5AeDKzB/DrDIpR4YlrN1w+KFNw
	 Ap4cID5nGzMLLI969r96VKGGUYmZxAqE5OiVfSoBd9Orw3s1LBj//8FNQepKDC2CMO
	 Dm5MOgLr93TKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 558B3C4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 20:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166871645434.12222.5355193804916589075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2624248f53459710f700768579f7c09c8abdd78b40dd8b042016469c786eaa9f
Date: Thu, 17 Nov 2022 20:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668716454
