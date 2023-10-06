Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E4614017
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 13:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtAY1bEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE31C433C9
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 13:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696598828;
	bh=ZjyzWW4iQumDF1BMUfmIQqL8VGuyHbp/8yB09RYaygI=;
	h=To:Subject:From:Date:From;
	b=GtAY1bEpYhLLGxvsx4PxeyJr3X3KboCQgIqjP8ENG7KOgtOyi1ilM+FXApNAjoWgO
	 T9/deTd/Xl2qvXfAilicL4PWINia3E5yYXLPn2NQCzhNmuL6XpofeXu6GlC4jMMaf5
	 1Y9SJD8VFIvxboDDch2MAuAhJGeWw1FCO5VD+P3OIv0NX/4LD7ZNnc5eDR95hUMQ7Y
	 DhrxeBmPTPvrCb5t/YCiXfLBZ28p0PAVXLQP0txsPNtgHK9VLODE4FQ8GwzGLIYhG3
	 Mh6oaJidvmHNxiUNw89IFDQDfFYdfHbcFF/576gs1PrWxZe5psPMO+SHW+NDB8571n
	 p8ZDQqnPJFhsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C96E81DFB
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 13:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169659882872.22563.15270122471028480698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d67a0954d188c20b129f5bc7a4502a67ece3e520e6c163f683ca28c984bb105f
Date: Fri, 06 Oct 2023 13:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696598828
