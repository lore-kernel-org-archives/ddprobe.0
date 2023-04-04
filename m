Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC4C7C
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 03:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA4CAC433EF
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 03:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680578825;
	bh=DOi1WNbUGBlOzvuBSDvbYU/RPVmsCGzAFjbKhrOAUc0=;
	h=To:Subject:From:Date:From;
	b=jEph3d75MbpJppBTeFVV5eKf+QEZWfg5ujTObbhMsOvhf+ywkdSR8OuJpeMkAET7h
	 NZVHlMCbdgwa8yh3TESeIlo6ddY9+isxJzkM5OF6xpCTU6lcbSOWHKIqokQVg+N8Rr
	 gfwNv5y9OLjtq0onGuzvugvUReV2l1y1f3M9XsujnvNJ4BCzPOUgivLue5QvCV6OEg
	 V7CCOYexoL6Aj9ylcy02RTPytZQDsAZiUHPgiWCbFPw8B2RnJdNIBxIx4jsBlIIo/N
	 jiAh1TArxvkD6cJIMRguu6hW/lKhljy+wkppKkl1Y7POjecP/DwMm5bfhXBUJ9g6Kv
	 CfoShOk4oZR7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA88C76196
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 03:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168057882575.10489.5305718631481728404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7789abc0bc8debebc7071f46badbd6ca2416880e4d3b81faecef8176fbf010b
Date: Tue, 04 Apr 2023 03:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680578825
