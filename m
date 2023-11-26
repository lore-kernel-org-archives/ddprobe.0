Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA5B16404
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/9IB2+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 856E0C433CA
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701043096;
	bh=L0nyh0H8R0igSC5TYoNmmLKC6g+wBfJzmqZEF79LwEw=;
	h=To:Subject:From:Date:From;
	b=H/9IB2+oGXJhcf+aZxVrJewt/Rlk/3hp9C0xGsKSNfHbXDRYIsSJSMuTzUJUCtZK3
	 2KUnO3ZYmBHo6jFH03GAzRELSIWz4nQ0MTSiON8kQaa7lh0Ku5XDEYUghwS87miKz3
	 3OUPbzGIZ/Fl1mtl7LSa1tj2c++aGpkkZszwG37j5CE31WBpMsVMJ8QJmCRzGbYHbI
	 uAOe+u96Uv2Izz25Ppr5h6NFkOTDliCcL09vQJZx3Yk8O86/hzt9U5Jvi2VBbVQSki
	 oKpf586b6mvvqju2fbIYj7hcVT2bGPfGxk1v1hDqZEJNMqoiiUp/2eeZ6a+S7l1K3Q
	 NmYJLGHra1Kig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68DFCC07CB1
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170104309641.22128.15400326527081877893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 758468f80b452d12558391a9c311cb6a9ecc3cba44ebc9ce873c4cbdf72e9ba1
Date: Sun, 26 Nov 2023 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701043096
