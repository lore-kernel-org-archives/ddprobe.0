Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3EA77C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 814D7C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662602453;
	bh=gFhZzjIsWG91MKen0l7SXc8T6Sl8tvFh+hrhftM80V8=;
	h=To:Subject:From:Date:From;
	b=H5+Lv000forMhcn7SkSUets/k0suoGccdXVieTz3w9L9PlzDyX4OFLQH33B30sN4+
	 /VX4O1D8loLKSuk+P4LSuTjbN/zm20BqycJPSYP5vV6WzThzZYUOTzg76AieKsLs8i
	 PAO5wYqh+KFJy6D9/Lu0CDrXuRxWt5fBAqFgvIk3hiuIdXXnDx3DT7g3J//f0Sh8zf
	 ea72BDbho7C2RB1yduJLhvsWtyfB/7BQdWybpIDjNw08KbbYpRHeqs6Fknv4qPGHph
	 Lgr+uVO0Nx4w2+od6rR+p/fLJnFkHdKEwv+d+Wah6uMURLE/kcKWg00GUZVpTnRi6S
	 mloJXj7miHr4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6902AC6FA86
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166260245341.20123.9829653876496883232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 546adcad16a655ce6cdcf8e7c59e1fe8c7659c67eb063ba3a8d2ced6ab33f7b1
Date: Thu, 08 Sep 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662602453
