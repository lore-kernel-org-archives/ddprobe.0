Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D167227713
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C54C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670347854;
	bh=3wcOnu6wV9ThpzKyXkqh7cMQaCCMRvq6h32SUfoTYl0=;
	h=To:Subject:From:Date:From;
	b=Wz29jUsXBs5A0Y60aaCalxAqFpS867CEg1JUpA173AHdGyoAU7JeY0TeswajfJXBr
	 u/5suSV07FJjLwXZPF4JmP2bgygDCKyasDVZDzZECUEXVlzrqHvFArbgd0DRhKTjqH
	 hCRH3giTl9j6emF51lewBVM9DPxfmvGAmM3pa1pFPw9Fr0zU+dCY5ZMjVbx84/7XcW
	 kWAJQeNBQnNIZ0Z8Fp1AWVQDw+Xui8oljnNqGvzJXtAJwxLnNzgxtNKfJDAKAaPTbx
	 dhCSMhNY7fmbzfPxbCIxuEskErogDS88E8HUqVWWTpsgVTx9xAHD6OxDkB4n9RV9Wc
	 f6XmVgpY+vEsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BB30C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167034785436.18862.7754862059107872294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f192fcbf58e317f7add027e1d306702e98db6a2e4fa498e904544fa54c0c2dc4
Date: Tue, 06 Dec 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670347854
