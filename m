Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F92427462
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 16:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNf7rW06"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA159C433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 16:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696954628;
	bh=dXTBmtC4HDA9wgF8u8ExqF4sN9f6MEYuZTrfd4jL/QM=;
	h=To:Subject:From:Date:From;
	b=XNf7rW06fgIfOL10u5HKxsGo3c4fN1ShbKjP0NsRbWs34RDA6+S2v2lDrErbifX8v
	 c/kL6n/sa6qdzb279R8kVnYp2saZuGSLyzgTNmRL2ZXal5i/vOjxK7AJYHNF4M1QHE
	 tXdZH29SZE2d1zny9g//qcN6qDMuWhYZDO5jE2LJMIRjS3T1hk9eiHhO8xvF7Br0Ho
	 J0E80n3ABDGGfFXvccAflGOd7tV/uPx7our8wBDyytquzL00yqqaDxEKQ9842aDO0q
	 DIc7IdAl4rlY0Fh6+GAnmt6HE7X6QT4BS45M+MLj2UcUUCIfaP14Ikeyq3z7u8eLJe
	 zpQIy3kcRtIXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B5BCD8CAA
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 16:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169695462873.833.3597830413420674832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d89a866e58aec080e2e67a7414e6894919789a192e011d5f925e311ad2efdca3
Date: Tue, 10 Oct 2023 16:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696954628
