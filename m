Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C51B1FA1
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 17:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E582BC433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 17:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677865625;
	bh=boSIXoOhzhP09MuYr8hYtDnXPu23VUThnyge+248E0g=;
	h=To:Subject:From:Date:From;
	b=mmWJ2HHV5OpbgaDlOjhvFGRBgq9N9A9qRNGIqWy0XgR3y22k+kWOB8KPkNWvtRxNi
	 efC+AU72SNl8r+2a8vDIj/HnMuWcqHMEiuF48trA1m0ctHdaTagm5RRutIBmE1xbE9
	 glwM+wfJ+f4OA0y9k247wqIJ90u45KG+/EwJN4KQ6imPIt9pvFWhETNZO6CnR/rTQn
	 EAtiLEkQZ3jxrKFJngQKiLjb5UoCT+TvNAII2YzNODm4WIm8SrF1cIrje0nmlj4Rvn
	 tzypBNfDEgJEQpueSvSVpSxvDK/sV/AWe7uOGRKkVSSKVp9oCbJm+f9Czo2jYH+qyn
	 9EvMWkskiq8pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9869C64EC4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 17:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167786562575.9878.2433694382498297050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb2cd41591c648a87dbe01ebbdaa347add6674f95a740174abf8cc4cf0487b8d
Date: Fri, 03 Mar 2023 17:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677865625
