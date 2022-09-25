Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7C07F
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DA41C433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664077253;
	bh=PU5GgJycbqbGIgJ+OziazyCeJHbNVvJoKQSc8gDVTqI=;
	h=To:Subject:From:Date:From;
	b=ZCQKBoOVf6ewMQ+EsEPiEWKswZYrDKxGI9yBv1QkDddEOZCJLz8CQVxM69zaoL3Lj
	 sfO4YIEiY+9dWzW+v3Vy41ljzRSvVIoSfHEKOeUFautKbTmKn0claHbvIT8QYaM/11
	 D+yx1BxRJGpqwBwJAV/WTG2cbY4YFb9uthOtPaD3aB9KqkzptelnQmysls8XnMPUJz
	 SiX/ZStTb9oNV6h8tuFFh7fYXcH8KHzDWX+dnt/C8UO1e7mH1nPDIubjK8pHTerKPa
	 Bb26l8oTxEvRpUoIRlQuBydrrL82alhVHlP77NXI7zeKgtjflxQ7F+CmjXi8J2/Um4
	 JuqBemLw1xwmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54953C04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166407725332.21308.10429825423506330500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b47260a67e2f0e61ff89bdc7e049326c4b0721d2b39ae43e58583bbe629238a
Date: Sun, 25 Sep 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664077253
