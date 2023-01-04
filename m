Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C95AD38
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 851AEC433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672848087;
	bh=Y2fIrJByxK1YTjn6v33kgCX3TTQWhU1bVaeMQ4Z1/+g=;
	h=To:Subject:From:Date:From;
	b=ONXoiLNVVlr34PDEI0XTQUxRd3HXt3o8nC89YJBlORya4xpTtVaG0tuuiTaJDfFdB
	 QQk/f9xoHTs5hsb/tFq7hE050J1jTW0A7agVQUmBwBLgTz5QSIZZf7dvCs0Sp65yII
	 EscbifpFeV2J7aSw1djeypnyD+MR9kVu4zHA6f21+Vl9LSrGiTLkGKpX/Z7FHfVDXS
	 WpnIy69LOcJN5qhwQmiSrJ8gUFegGAH7I+SR/DpuAE2xbj8g86lEGL3V+n1juxuPZt
	 4o1DyCj1HSQKl3qjGe6bKaCgUKnlDhbqOB/vFbj78vUhT3mRG7hANm4Qn/Z15o29Kg
	 ddpkTiui+gCBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB9AC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167284808738.12996.15390093456777697124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe405b9946cfc65ff4e9082a06cee29387985c29b0d5798c8617721a11169e66
Date: Wed, 04 Jan 2023 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672848087
