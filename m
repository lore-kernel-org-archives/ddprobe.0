Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59627C
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 04:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76B63C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 04:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661746852;
	bh=9uTC1bxkKoT+ZTPrMez7mFaGcwuqdtTyBjQF4SsD5hg=;
	h=To:Subject:From:Date:From;
	b=WlB2+iKwaKnc+I9MdTMlzAD9oFzPLJR81du0SnAl0wWFwEI98nS0BgD7EVflLyIPi
	 lJCxc+ieN8Hw5PmCNsEcJyJ4sD7jb80lBNngXeqz9bOXIRwASnRSDQt3D3eGIuy5Jf
	 A0VZ1vo6Xy1d46uQQCiDB4HLaaX7lg/PSR1rcM+6sfC2XRMs9dy4zyelAECSeeaSUt
	 smkzzCEox2jl1sUMMi/KzKPdyOY+UHYBkUBaWaXtYlJtG7RcNqIejF4EGyHQL9pkXF
	 CuTnp+av/ErN7dKerhI5r3rzaKnvDOhPzK3nx7ThebPb/bhYYlnQIMkKmSFHtbwvd6
	 E6T+DAxi+Y9FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59BAAECAAA2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 04:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166174685236.24831.6162700028404705071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6c3ec8ca05ece5c911dcf5163be457d9b3563bc8ae6ebe4081cdcbae01529b7
Date: Mon, 29 Aug 2022 04:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661746852
