Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD68D79DC
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81BEDC433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673912487;
	bh=HROZQY6D9d+5mOH8KC5+fTOYUWPIaQ3iMFxydNVi1C4=;
	h=To:Subject:From:Date:From;
	b=Fr8DrN3IuiRAJGfNwh0uXIv4yScEyudd5Jz+ZPN0aydh8Kti5JKP50M3BbTh3wRbw
	 ZkUA9nSC+sEteJgfmgLPy/YxbqQ+x4NiSjyVm1N7uSUDHZC+Fx1QnP7HhARl3GA7bS
	 0yvB3vcVBq9ZisudQ7YruW6c7lOJQP8uD2zn3r6LzpzZ/VfAEGpR61+Phid4roP+qf
	 FspsFLTkyKBLn9ou3/6L7GWzyUdwrfNxJfXtKNah7sXk+/eTdhAm+Du5znReSU3oY8
	 A1hIHjwAPyYXZqBAX1GpqdcElDJRUj+188xSEwoXFQNl04MJc2F+lE82G+ooI5/mA2
	 FWYIXZhp1pI+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 648FDC46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167391248740.1748.2466649626611232039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d67e89a1bb89d6c7574cd631aad25bcad429902c1edb83be6be27a1a5dc8c08
Date: Mon, 16 Jan 2023 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673912487
