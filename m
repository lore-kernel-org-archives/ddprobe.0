Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 892B5A947
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 19:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E144CC433CC
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 19:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688672828;
	bh=CTge6bRRPBq1vy/eIIgcf6/RrIT0m41PJ7bU8F8VVVg=;
	h=To:Subject:From:Date:From;
	b=ttPMBgt3WFB+IOctJSInlVCwgXf5SKNBNNSraE8pwvnQNArjXCs8BToOANfQrefvV
	 cIAM7EHyZpbFqPNYjpd6X4zybSSgnaTT44NhS2NjDHJfmPzrndVaVcJLLwoAJ12lca
	 8JD9cJ9NfaCB2ZtpuCs+qwS6mYo64cDv2sc0oZ5CYWvb900sn/On1d/8Z5/GeWvsEa
	 OIEpBUyThkwIekV/xNMv5hkbalQ0XHhtGrscJrePY1z93UPjrx/Rwv23tWpSBiq2Jf
	 6aKAyVC6g2ffBQepFXH3WNAo2tOnNRfDQre94V64k6VyFWskVelegFKMSaVCSVzxgT
	 UCfOavD7vF+4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C06C001DE
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 19:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168867282867.7384.8053586289792855948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca9a8bd9c39e5edba66774f8112a4c5d025d5bba66520ff6db60b450327892e9
Date: Thu, 06 Jul 2023 19:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688672828
