Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5462D1863
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 07:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB21C433C7
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 07:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690185128;
	bh=vvkZEGgvFj6gL9eIbAKXsC/+8PstdWa4C/QpQMV6ky0=;
	h=To:Subject:From:Date:From;
	b=WeYbq9UHHgi4EOBceRlZxdJ7Ns2Sps4D4Ii7yagy//LIt2ooH/JGvQduSRUNU9EJm
	 BLcZgsngmY0bH2SoGxmh5Nv0/szF4XqCaGr5PTwG2lYW936D3U5/uZfUykhGsTmdHA
	 jCDLLpZfYLZPCBgDM+jDjpeX2b7TGPXEzn+P/14Qy4XKAK4rS7awZ14AF2C8ZU9ZT1
	 DwvxGk+l0W5csxMociIU1+3Oxc3uqmCYZaN4/4fwlDJhUFzue8V9aC/bCtH1Pdj0Ya
	 ioU6zotU3SeoKKbCxzoNU8H9AbKOS5MN/Roch/g8tNN9RT2Eo4ED+eLq7REsoSvoe5
	 uDPWoLtmsy/Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A52BFC001DE
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 07:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169018512866.4884.691696772096103418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c7112d621d2b2276362cc10695cb0e1e5d6a138ef8bd9cb41c564d1a0aac2b5
Date: Mon, 24 Jul 2023 07:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690185128
