Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23816524B
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZP3a8rOY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8215CC433C9
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698722296;
	bh=6rNc3ZRLGLx5tYrRXR3S2q7YJSJik0hXeU0+6zFeAhA=;
	h=To:Subject:From:Date:From;
	b=ZP3a8rOYrDHKfM3goaHaDaDqRmwlm4gXuDab6gvc+ca1T8TjiUrrQbCFfKaa5OKlS
	 fGwB0vmp6oywCPS9zQIE3lx04CwwXR3uAT/D1lBOkX78/WmRa6Y5+qs4MRecBl5kbz
	 j5oxqMHcD38fDzkeYrBuxfDQPO7CUPHTMp5Ph+CnGBXQeS3dO0Dya5ogj9G1pkEAU8
	 0OgTrwu6AO/KIg8+xa2X9hAIhu7ATmvAo5J8I2e5NNlp52rkJnUNzFt//ajda6X8Jn
	 bSTQmJKRX1bh82Lr659sHw5O/RgyoH1A8dxXvu/Va6Hr/cLZgvDBxhHCmjWcp5ietm
	 VXXUq8baOfRwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 648B2C4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169872229640.12716.14805841193951918133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6084d85a323e77e95de12dfceffff0795ee4bef9a4f385a21f0774ea0a4fe691
Date: Tue, 31 Oct 2023 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698722296
