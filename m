Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5AAE44395
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjMmfGT8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79ED6C433CA
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701961696;
	bh=TrFBTxakKKeZRVePKX9Bk5ixrbL2N0Z7rf71LEfKaUU=;
	h=To:Subject:From:Date:From;
	b=SjMmfGT8EuTyeqS8tEiRlK6V8cJIx91qdsaOXGh/GXmAOUPhyOyT/f/A3WRXYCYtf
	 FoJIaTAW1YsMOpw22jxRVFrlyans/dy6LfylrJV40IUAOI2ddMD0hZOaKkirg6lkm8
	 uW3RframM+nH8r+eX9B3otJcwKC9LZHYs+y8gm2Vh9jWIyUnY23fUz8FYcEXwHs1nJ
	 HfXVV+NtsKkITpqw59XR+nyVnzgyyriUNCYSuievMJ/Ew9hrtSbFx/IqMOEUStIEyq
	 g+q5gCjbac9MLFDDV014P9h20PBh8SZvq5gmhwTf2VAuSzbWHTH5afNUWOt0ne1xCe
	 9AXnZaRdiUpQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60310C4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170196169638.21793.5895041410421460993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4fc32e9dfb720d3f2be3c4a39ab9675c1898760791a83aa43c5e5e242eaf75a
Date: Thu, 07 Dec 2023 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701961696
