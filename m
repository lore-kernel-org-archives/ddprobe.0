Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB684EC1
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B310C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670586087;
	bh=K/eOMP8moN88hdt/JaYRSCsov6Q2zKS/xewe5Wr6dZU=;
	h=To:Subject:From:Date:From;
	b=nXgL3OxpFv31+8m6YseO0k/WOgo/Vf9rcwzKuoTlKR3Gd7x+nhDM+s2DEsEURsoNY
	 OFgxQg6iAVBKOjO87j4myOM4thiZYpDuxRoVyJZqrGC9MQ8JMKkljj/+oU2PEaCEQJ
	 42IqF7y7vMOHxlKtjAGBmqlxLu71abrr0wAgfeZmEFLhVgyBydXChq0JqeI+McasgH
	 HhbkdLDaFBID7gDgHy2o6WKE0yMTM0e+Ra1ohGhswdXmwOdKZVoewMzczzcZWWaUCc
	 C+zf1bsEMLlGpIF49hamnRDYeUxALmvZxTKW3DZi2eoCLXW9D9PcfbwTRcEBnQxdv0
	 BapnNr0Wptkow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6179AC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167058608739.30641.5966241589772127462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 508ba80be738dc9729d4b0851e7e3f6d835d3635db2ad040bcf8fa871c0a0cd7
Date: Fri, 09 Dec 2022 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670586087
