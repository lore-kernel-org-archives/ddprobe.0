Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E55471FCC
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 03:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B411C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 03:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661485252;
	bh=rDNRSpbKbRW5tndX5g61mPRWouN8TE1NoJUjlFIDuGY=;
	h=To:Subject:From:Date:From;
	b=TQ1PtBppnlJEbXmuORx3SWQejCPQWcu5RyS4CL4ELP8GfI+ez8S7eGPx4DPA/thtT
	 wqwsAGIb4uUgBFccukpfU9lVSIefkH638Ai9tfJ8GWxSihaCsPt85dHifxn9Vf6hPM
	 XjPrgMHkbFLwFjYGx8rqRarl7cJFBDlDwe197VAIaH/k+YS+Amjes0upiYcCk8bOMR
	 NjES0AW5Pn4MBkTZC9iaDMt64bmyDuHpQhPXGiRF5d6VWDlf/8G7t5ZZ8/cc61ZuG+
	 Uo339xGm0ThsnbeW0JbMZkpDe7OFZG6mOksr0ByWk3Q/DGJUNwUQJ0dz+h9WrTcMVH
	 ci3wF9twjIvOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DE33ECAAA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 03:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166148525233.5609.7057836898983722705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b58d5d3658b584c447d4dfabbc805bee1426bdf611b6126c7d98a68e3dcbae
Date: Fri, 26 Aug 2022 03:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661485252
