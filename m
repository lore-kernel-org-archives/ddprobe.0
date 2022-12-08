Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0CEA629
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A7F4C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670480454;
	bh=ui5MVygfheWpfn5ZWkHSOQ/pIZpqW+tJfgiSkrz3KqQ=;
	h=To:Subject:From:Date:From;
	b=aGhkVg52QpGTkP5msWNngI9XBb+nxQgkfqo6iSy3oMLXzEptxqQxl5CYtkVh7m7Cn
	 wwuvl8mkoBSJsxXJCz1gZWb8T3Mo8qBdn7ek1S/MXEA101jOvvBBp0RywKkmzd2vun
	 QKpcE8AMiL6uRwuj6kHrCPaKlW/dptorZhgrtX4/aSlDG1EajAZkmyjr/wNLr95WGz
	 c+Sd2ho/aRKfKD+0/9MTFgiC4m0B1XA3bNE2XeTfU2b9FLvs6L3M7RUhRAVdXfAQ7J
	 GTypsIm3LJIr/B4CB/+2xYjs5fBqxNxuHaSSdPx6PMp/yKNvRKF7Ey84y5ZXqJBFDi
	 ZMW/tP94oDiJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F373C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167048045431.22718.17191140029034678982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a55235eced00136079f21366862090e8bba64e4854633c718f7e19025af592c
Date: Thu, 08 Dec 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670480454
