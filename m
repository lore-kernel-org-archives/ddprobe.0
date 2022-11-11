Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE7D28FA
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 21:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A164C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 21:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668202854;
	bh=nYqPgRGhYnr7lu2AcqeQVdI6OxP2KE+fZtCB/oqpAjc=;
	h=To:Subject:From:Date:From;
	b=cZiuss0E3j6CBEOILkGs35FVhgduskOJ30OTr49a79XTUAb4p6HLGR9ZS4v6TSHAx
	 Ff+KjBAv9usJLEI80PhdPsEQxVgbUtdzQdPanGtFLg9QKlGskVW+p29apfbeh3wCoI
	 2W+LhDhWXBZEd/RL1ETH+YpC/i66f4vAu/xNRo/2puLeYQ2TbNIWnTZQb4uZOXOIjM
	 GLbaz7mfKDElyUW+5SZEGEZV1BtMsFRhr//BnagWC/bcm0I7qDl3nCberex1xZ2psg
	 y2A6/vOZ04NY6j7EweNBcONE/01EnGxalsLG020Bn8dOYlysIpYYOd5ROqhLFPlp+O
	 NAgPaBbz513mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C57CC433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 21:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166820285437.11620.16673654625642299318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12467d3aa44b73320887bb9aba30cb979888bff987d8374a0a141c953562acd3
Date: Fri, 11 Nov 2022 21:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668202854
