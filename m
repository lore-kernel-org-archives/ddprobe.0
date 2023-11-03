Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3043A17C5
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMXp/5M8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98124C433C9
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698987496;
	bh=2h86Vf+9KS4eXZHk66am8nQ9I2qKwECJkLrnx0DtXc0=;
	h=To:Subject:From:Date:From;
	b=lMXp/5M8MYtLYOA9R8JvB94Ntvw7XTmdecLEuf/r+BctwMwJ/d+yT1qpM33L6Pq1w
	 xD57OE8bIqtEFkt77IDL1QJSA0zptvt8/pL5hK/SV+KrGE3xXL4bMws1e1/ZNPqKHT
	 iqu16P0zgyBzPvfV1PFsP83soLmzZDwGzc5gNKQ5Ds2/vYnjelpL7zdKy8blNq++Vm
	 6Upv2K1ifbmVYgzR5WTPvzI4P38tLfHuIrxY7V44QTcR/JhihzOrxtjcat3xZTHqFS
	 T/b1bIs0MNIV0ROFAFxDJrBbvi7us+RVScOs1aifBPN4c8EzYR0ELjRc+NV7gM/fOn
	 vqUKnjaRAKgOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AEE8C4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169898749646.13289.1396836602149797114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac55bd48a9fca7e089bf76089980135ad4d82f49a6ab894753debb710117748
Date: Fri, 03 Nov 2023 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698987496
