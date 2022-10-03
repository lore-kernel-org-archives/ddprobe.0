Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAA7D17C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C23BC433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664783453;
	bh=SMMOfTGhJZMMq7913+ZqefCa/AAbMmhrK5IEqPUmow0=;
	h=To:Subject:From:Date:From;
	b=H3szNDfHosUt7WJwSB/2feS3vMK+A1tpA8Lltsv5iM/DsfCZ2MO0cHJOZ6kz6o7k1
	 r7FCZCHeNWZDcNfI4iiFEL6M5c5cYrTYY+TYWzfDXb6DC0cOPkUT6iSvJPqOLQm4tW
	 Ap8duVX35PsTyXTa2+AfnQJmdZASiFGtPx2dM24o7lZY4ToIrTYDayAsSquQFE+JHH
	 SKcl4loiWZ3/G6wU72gNsNwn9Jd9tUPJ0kJ4LWjJIhW5n3nOX/DhJU/FgFrLzaDP2C
	 OP1hg/2kfzHg9F6ENKt5ibhO6hQTAh8TFDiiE5/w5m53ivOrj8M350WvZwNWEI72K9
	 OtdQVjYHiVaSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50693C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166478345332.9311.6055777879717027356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ba49f6ced9d0dac4ee50e4c9eb7eabe483a6ad106732748b6c286ac811f8e5
Date: Mon, 03 Oct 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664783453
