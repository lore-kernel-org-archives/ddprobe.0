Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC71E8F76
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 23:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 708FCC433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 23:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667258454;
	bh=aaOAIUnm6I+fdNOLAnO9+Z/ja9FlecMpKyqa8fUh7bk=;
	h=To:Subject:From:Date:From;
	b=ZF5qMe/X6fghcjZQ0iI4PGVA8lgMAR9VE51hLaCxEaQFCaoNS+QS25w07hJedtYuC
	 BX+FtKUrcPPEhnLnM12dYqL4+PMdpg9GQhDigtzF679LoCHQwVy50aPjCWg+zcYsa/
	 nEIDRImXC8cAXar/1EwlBCeHGVCdwL8Q2MIugumz6TIz9ONNsQaTowRxVAmUAGKQ8E
	 vR1TJ2AY0JINJWXBNZuIyaNuvTLE2wL8GrZq+AbCpdG1poExl6JuQwiuYUWjJA3b41
	 hLGE0qJDw/Ip46dZZIdivUnQe+Tca0obPL3uDra72PI57VcUdpH5BRDQKhkiGVNeaX
	 zKqjkywTrqAbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565B0FA3741
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 23:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166725845434.5865.2568813035592763652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19b54f5d77a74402ad4ef52b1301c47c7fb6805288b07393fbd645bb51d21b30
Date: Mon, 31 Oct 2022 23:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667258454
