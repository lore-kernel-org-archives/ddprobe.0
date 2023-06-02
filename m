Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A74A156FC
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 11:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB88BC4339B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 11:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685706426;
	bh=1vGV08+y2fmAPhjRX7KY9m1g6AVr+s2m7ENYbRDekgI=;
	h=To:Subject:From:Date:From;
	b=P6b2ohIbOoN+KBnPGag9vNuQxqccVSMqEdeE+g1tesD3fWdgB2DOla/90dBXdviVl
	 51V3lGBrhJASO/sXE3/MyMzCzgnSuhbvgWpIDRUCJ189OmoMzi9k6YxfDYc5JWntRj
	 b4gAvrDfN0Vq6RUZtaJcQVIoQC2/ub6HthYFOIkuQKGdGftnggAfpD9MrQVpjwkcyu
	 aUMFLO2X+FJ8Kg5E/xhgiT33kvBEx4jtzKdh1ZeZ0sALl8P2b5gZ7IHOnhv6OLbiJd
	 ijf7fNRavY8UbjGvX30NcxIh7N32AMKRbeV+Q545P7uHS5KcdC79qQ5Ge2wADgA+Zk
	 0UrL1fHAjj3Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC644C7EE29
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 11:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168570642576.11690.5845515779627984030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7eafa774a6acb57736cc75ea75db7cee7903965754bfd0181c6573945844f73
Date: Fri, 02 Jun 2023 11:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685706425
