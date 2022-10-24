Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF317B
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EADCC43470
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666654853;
	bh=31iXjr+wv4f60Ly+yZ70rDnTzyz4PXsca9PPkSi3FKY=;
	h=To:Subject:From:Date:From;
	b=pncalmkssV/awmUAhVMWHVt6E5cdprM2iQKaT4WwyjhmvQ60+npe5hIpgLNogFhgt
	 2xCv39g9s5G0JbtmTfYFtWSKYW5NT278u3qbtY3eGuCySo70WEm6v/y6h+oEvhvxeu
	 LBK4+TQaqW4WpBs7lxmmehfdP4KA/1h1vYZ4+SH+H2FyQs25HENABIvGaUfU29YFK0
	 IJRowN6gB9fPHBY3CEGxsj19ha6OHGVKhyZzMvMwwtN+Cn25sIeQe1DON1a33n7UHd
	 ovK+MNmI1ZdbQhr2KeKkq01p8CwsKHoez471MjFKfT0TF/houfBqXiIsmiKW15RRCD
	 yZjMMfwzeSKOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52474C67871
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166665485332.11431.162743842736951201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b46695c79667d14a4ea27a1fdc34ac2608581e19ac5f1fdeb7a0fcb0530208e5
Date: Mon, 24 Oct 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666654853
