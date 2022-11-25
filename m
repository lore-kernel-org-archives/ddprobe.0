Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB142F46
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72CC6C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 11:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669377054;
	bh=WFLDd5l9REqw55TEAsoZMniAs9C+cosbFib6CrI4R9U=;
	h=To:Subject:From:Date:From;
	b=OiPNifNQi+84nh9TJH2pqhEnC65BsG89WDNkF5o0Km3eGwk2iLJBhmmhXKPeabeOK
	 Di0ZU95Ahkm5K1yfM80BMdDpJFe5jvOH7AT8PRBvpB9lr/U5G7QRQ0wMFVreYOqquW
	 XCz4+6gikUXbcs2A2n9A67Lix/t08AtB/VBhbEeiapPpdmpBgGUdqS/nwfL02AXDf3
	 Cq//Nkn5heR6c0Nbe/3zgTNm9xtVmsJPL49pWRX3pX5nAJsXPb5fgMrZ6nqXETa509
	 xAXx0nUXfXOibEr97MkhvabD8CalzPxj7IGdjgKBll7fCyuKwcwZ1V+rqe6DfzXp/o
	 hfJ8ab/xwaXhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565E4C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 11:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166937705434.6160.15973491401209822560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ddd669bb5fd0f9a956305bab34893deaa651652dc86534c6c672274b25594a
Date: Fri, 25 Nov 2022 11:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669377054
