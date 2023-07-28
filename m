Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD7BD304
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 11:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2FCC433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 11:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690542728;
	bh=IDMirpCBmt3UpXt/CtQEAw4kt26Eu9dKNe6ETo84Edo=;
	h=To:Subject:From:Date:From;
	b=POUShaiYMP09walndhYeyBPlMkGGn1z1OBjBcB53pecSJxesLktIQzd/FaiPqqYcX
	 C68v4GkX4n1al/rGN7lL4SrcfRiIprl1eVf9BQsIGexX9ox3eWpsAFbAvHWxj9MYEW
	 CWkzWvzq/EBY3ew8NsBhUFM1IzeioOu2FGz2k6tQxfpuIfdxScyjk8dqOrr/ieOyGk
	 FroHHZWIj/wOCJ14UhNFtKg5v/XN7ExDCWLWT25d2qejypomDnH40QoOcxZrrJajxw
	 yMMxKuLsJkuYmV+sPciuPmlVJ7CLMpuIzBn6SKyWqfJJ+ZFJ7mdKUhLXRo/hlPRUcP
	 tr82hiJgdcuog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5CAC001DE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 11:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169054272869.4188.15790889563066595257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2db6aa1149cc440b0041ced14bb5b4228bb0b45684b413f087b67727f8e20ad
Date: Fri, 28 Jul 2023 11:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690542728
