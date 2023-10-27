Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165473FE5C
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQ7HB0bj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89533C433C8
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698444496;
	bh=0YTYe9yN9fa9uggzd8r/XEan2Nk2r1NG7XLsrrv8B74=;
	h=To:Subject:From:Date:From;
	b=IQ7HB0bjBXYkK/C/L6vK24j+iGCFZayuzCJ44XbXF5YrBuE60rNboxw3ak3HsDl79
	 HRTDZiIg6CDCkbLWqa4oxxGbCoGXiAjwqt4Y3qoGvg8TQcLDL8j+Z4Sep/iGVAWCU/
	 BDawzfp8SfFDgyNzYJ3+WhMSdllcotOy9CLrQe83xY0ctUUpT1gfUP55XT66ScverO
	 HeTuNbm3kZg8bpPpLRPVQUVynVZe4CLBbqmojn+NRKWBqrgBusq9Xj7THn1Anj54/9
	 kx853auIXIL5+xwo55gZqi1P+hSLhEtQYfgoSD7TAlOSH13pzTHUzrA3Dit1wSoVHn
	 /YNunk5QF/p6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67028C25B47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169844449640.13261.11717456030134387858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1aee95017c3c4ba71b7056c970972179fdf240896c421a6f406cef250c96404
Date: Fri, 27 Oct 2023 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698444496
