Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B27EA1
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 01:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F11C433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 01:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678497305;
	bh=C2B1ld96kNAKdR7KOVOiKk4KOq3dZAhTqBUf+i76eK4=;
	h=To:Subject:From:Date:From;
	b=tdCCs3mAJWASYK2+/21VvheeEBhCJHaRFndDs5N28PKCujD/x3ukdQSxki0duU0TF
	 cI8XLu3kbzCyhKCfEZX3bnDwazPsce1k4vroVXh8Ac4VZF6G4z665Nu/GHnIOSK651
	 zb1EkGlDOG31BAvmCytdo0/5yawN9HcYTV3mKtje69a1zg6Z6K/GTEPdi2EojTFqmi
	 BYRw2itCHzYHL8RHQTq+S3EQ9VpTScIQ/KZp4LPBJ9bFkCI+vaRFZdUjiBboNNdZQK
	 WCMlnCCJMlcpHo16R6G8OgbmWQgMvZtlaxCY5gB+vGLp9hMFs7rEtFDd0jEWfd9d0M
	 QLSoNJsZHVV1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B74B7C6FD19
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 01:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167849730574.14304.11620404279240436322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d822b703bcf32af09a81c8cf5eda14e122f42cecedce200f2540896f318cf8fd
Date: Sat, 11 Mar 2023 01:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678497305
