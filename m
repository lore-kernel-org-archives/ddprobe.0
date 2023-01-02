Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB63F20EC
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D816C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672643487;
	bh=kdn18jFdOuCMEMZ6kHUWpj+pW0cRJItzG88Tov5yPrk=;
	h=To:Subject:From:Date:From;
	b=h+JwK5XJ12wptMreaMC/nFzXLOA8uGBp+YuqK4OcNhch5nWb0RFB/N5xwPC5t/4eB
	 cUdIFXo4iDWiK5R3HQs/wCTfjtZlGf2hoZ2YM8bD82qM3zgrEicxd4IiPcs812IDGo
	 L9ShcxD1gZggcb/t//oQZEKDV4B3jA/wV9JxSxUzuQChQt89EmK2BXdV/YvWvxwZkQ
	 RrGMo3EWyD15LN0dLC8F3JaRYw+tvCFSP7oLN+BykQjrbmdVZ+roKqHz6VXs1ArwwF
	 WpXZNoodTcLk1GAlgJAzOuSz6Us2HFzZqIFlj+cfqyKTjgBOLUW8adI5OSNIrQPunu
	 ZUzGUUq2+I/Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F64FC4167B
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167264348744.29378.10905092821940715114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa4b59d1d07143eebb29a1a498cc9566fcb791d52a5cdcc3a4b5e87b2b274b3e
Date: Mon, 02 Jan 2023 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672643487
