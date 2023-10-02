Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7356A1E500
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 18:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFEF7C433C7
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 18:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696270568;
	bh=ROqQtzTXrbSs5MbPr/p+i58kCnuMKV+e4JV5QF0XePk=;
	h=To:Subject:From:Date:From;
	b=p1m2wqOcQrB0HTWtu3nZ4qT/JkdC/8efFAOow3gMZ2baZzSpEPaGi/5mUx0dkklC0
	 Jvew5gQjvPz5ZABv5nD2l/R9rkikqtUxOBLMfFd/XlDrb+d0i7NbOrC/YUC8jIjT08
	 kmNqtEAlNLWM9d2wMe9VIm8ZQuVoyTHwrImcRo7QVhDB5CcZxF0KGptvhL2WKobK7N
	 0QHqqpuLR+9Sf7jML5m9KI+mOtEgpE3Rg1y7aqWqIUnvgCvBbfMv+0orGk4VNA9kW3
	 3N5BsUxhHrqqe0RaHxu6NZYSOb2vP52OOW0B2Rsrq6OwrI64LOAmKkCSd6je0+xuF0
	 coAtFUuFelIQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B61E74902
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 18:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169627056874.4692.11416883879662647596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58e23d5cb1ffc1b4acd3bbc7e56e6b1d504ec4a6d62df6c1f7297ef59ccdc11
Date: Mon, 02 Oct 2023 18:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696270568
