Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85D01C26
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 23:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7577FC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 23:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670023854;
	bh=7nKTmu22X73mt3XKdmk8NCiL8dof366yQralRM1eFnA=;
	h=To:Subject:From:Date:From;
	b=WRbpvvHBvCmnkUVPhr20xqZO2NK23nnnSKo+DxRG0yoU3HIiJVs58WtUnT01ed+st
	 J6SSSunpycBt0qN5H9q4HXOQyCLGxSC8Cf6wjupi7WQ/ekUql1nxkgbYM7xX7VEM81
	 quR7pLGCpPzQmo5KudwDjCZB6TzS4HLcGlMQh70kK+5hPdAg9VOlpCAi332OiIF/IP
	 fzcrzI3aVZ+NZWiKtvZHuYH7FuItXnbWCSSHLEpJDK6HCVIkyKUYJM7QHTLMORL4Oq
	 RmBshgaGHvnoYNsF1zXFALSzBQ3ccRdwQx+zQPuHu1h6+gXh8OFixklm1m1sSDohI3
	 4StRllnvnIRBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5768DC4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 23:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167002385432.14559.11732807299942728994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4810aad663837b83af74706b456d21338c01101afc0cd3caebb829cd4baa98cf
Date: Fri, 02 Dec 2022 23:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670023854
