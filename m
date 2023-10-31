Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F9E1D525
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvG6Nk0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 854A9C433C8
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698796096;
	bh=02i3MqgcSaYlxTKCfcCIiHDWmfeIGIbVNcpWeyworLQ=;
	h=To:Subject:From:Date:From;
	b=tvG6Nk0IdJKyeIvjUpJRBCbnMYo8DFdDsj67jx9QkoAzQKYbMRJaCT8ln/09c9NL6
	 fJPd5vd066RJGWr7cL9rLCP07/p8fOCPz/GRfbYuyo/JMvTA3AYdSru7+zXFxWwBEj
	 vuYhqs0oFNHRYdM9sfNcIwV7i/usZ40an6DOg++8kAujzItmJuUzMZ3cpLv9ChkGHZ
	 5qwlCtDysW6th1EecG88S8P0t/7IWN4O/hTfvrzE2i/K6DyjaBArfZOrM6Wao6m3qL
	 t9xYJCDzfH+BxCMV8Meru93bWp4QiuzeLugDjg4f06GA+E63GGRDnmIYL/p+lYtLF4
	 x8EDCTO8kWocg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D4EC4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169879609640.470.15238596700541587522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 753eb56db5e48da805199c036a144754d6f709595de83f20d6d6f074838e390c
Date: Tue, 31 Oct 2023 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698796096
