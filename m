Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52BF7E
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71B59C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669344654;
	bh=UV7QK2un8zsTJ4ywgxRuULeBBurddjXprM0SFfANXaE=;
	h=To:Subject:From:Date:From;
	b=H7NeXXsc1f+BhviLOGWlg6zuU1MuaX8lrQFvUBsNFoJUvlS5nZ73KZx7QvI981o6i
	 CWU0vAzY2snY20sGYZ0D+wlKDsPZiv6J2fs+g6cusE8Qhd0tO30WWyPPzC/sLRgSH2
	 /lrL3MQTHRABnCX2JhPE36fMvBlYNwZsyc+uC1A94vevouivXrin7YhD98KPXpQP07
	 CyE3VXvTKpQ/DU/Lq1AJa+9RQbWrph+LqS8B3ClQQ7Tpn6IRyFDAe5FjY4lEtgHC6F
	 PjU77W3uEnGmh+st4BBqhYvZafc+kALtQwGdv/+A2it6vfT4AfKzrNtimzHGnCI02w
	 7L8Iie4lWgbnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57A32C433FE
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166934465433.2477.5599466228219153667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f645d3dfae5e66f8adfedff5c58c1a4b7732478c0651b2380f429d91dad6adc4
Date: Fri, 25 Nov 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669344654
