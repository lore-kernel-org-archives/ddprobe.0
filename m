Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BADA372
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 02:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0E0C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 02:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679796125;
	bh=9cx9tW3WuSREFqlfM/wqAvHmY5wPqulafouV47iWQq4=;
	h=To:Subject:From:Date:From;
	b=k4EwbRiQqJPcpyPeM8KYTa+efrA1ZIiXY/pjDPPddfkg6EVQsUjlpTinUXqvuLAXQ
	 YrSPwXX0jgoXkH2K/LTti/LTFB4m7vjWcwoAicRGZOtKCzq3s0Mj/EKL1AWFg5FOZ6
	 rDp2mZDBasKSo0dHDSABEzTJLG4YOjTZtFOkjAEr3fmugBBVh01QeL2w0p6srYeaCg
	 waxmYhRpxZQZcg19zgUQILLoYo4X6ciW5fiy6uxMj1H/0XNX+qiiUND0/w6nMxV+q8
	 KjBjUjz6zFxPIDBhF+RH/LSUZFKS7HGKDWFRY8t2Y7YUPVTD9uT70Q7NZyd69rAoGc
	 i9FrHH0dwvjHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C332AC76196
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 02:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167979612578.15712.2084105065768506416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60036c9972a5300474d10f0b367986694a04a0f5fbed6c48c93d28fffb5fe963
Date: Sun, 26 Mar 2023 02:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679796125
