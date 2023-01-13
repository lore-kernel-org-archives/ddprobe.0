Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B81BA57
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 877A7C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673652087;
	bh=AC9dEOCQ5pIzg+88nynjlyaSJnxCP/mZH2mQVOI8qyM=;
	h=To:Subject:From:Date:From;
	b=iCZepgVZqymwEkwnlWGGR8dibk64StepBoxS6vaaCelwy2RhenXxAsNW0cBsXoBe1
	 ryDNUklOH/PRrp82dlmguT5Iogpv+R2vmQxoa3GxF+rmzX12gWUFPOsmJPp85zHfqG
	 OEH+K9X4UZSbqky5ALTrFjHPpCgubkQWgqgXa1iDH+OvK5uZdfneqxIxV6cPuUxxPw
	 cuj0QmpelUOCrOBMBCU/JA7vDf2gh9sHYX0xMGI4OciwWdGvb9nr5UKVvuvYOEC+f+
	 yl6FYrKJjf+ssXJtXyPcSylzDo5/pAsAP4vz1LpcAL096aXfCVlNvw5D7BaGJ7aRFy
	 2wzHBwTSSXFmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A2F3C6379F
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167365208742.17152.6626148801767243249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df58a0aefe57eb9380f5edc87b164ae0979bb10cac6799408365ed8264b3062
Date: Fri, 13 Jan 2023 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673652087
