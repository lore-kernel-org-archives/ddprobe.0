Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A17620
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F7B2C43470
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666577453;
	bh=wz0LHMKdjetPgGW4hbSvCzAr38706qI8MzmJvjUPY8I=;
	h=To:Subject:From:Date:From;
	b=cB+wTwAYAblQeEiwCtBje0ne3QDqr5W1rTOVrMkgNZ9c64rZduWMvwLRTkdbTL9iw
	 faMs3UmmqZZF1ldQwi3/mvjVMslYIheRzyZm60FuYf/YkZZ4GrfINk79Qfk49UQi/7
	 Rt0Q7dNG1GGIHA3Y8e9Ud1AE63M+QjLLwBykpd8qwTvlJl+BCB+jniSfoFjni6zTYK
	 ncHd80v2mxvwzCRCV7NNDCk1eGwirTEp5F6cTjwJB0RZUInGdaMxYVhlatVPJoaQwi
	 F+8vPZ27fa3CR/IIPvA8uC3Za02LlZ/JxJuexi+Thm5XkL6sdRpL9ZSPM/Kge5DpbW
	 kEKOHSkMzGUHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 538BCC3A59D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166657745333.14330.13139228046894662778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db7723807f0d267fa47f101b6427f5bd50269db50cb78470fda8c4d55fb67aa7
Date: Mon, 24 Oct 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666577453
