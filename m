Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06EF801
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76436C433B5
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668224454;
	bh=9hprxy7kV7ooTD9WrHD/rzF08COBKfrxbZ23VJCYqZs=;
	h=To:Subject:From:Date:From;
	b=ASv0rWViK5Xm5TRnxuPSZy1zu4E69QXlVx34zJzLlxK4jLSvCChPDlvWjNDbrGEXv
	 1sMtkYU0I391X7NFhTjVb/5lIIVNilyiufnlf3qSRgZML8koMo+og0lnjsrboLmaPk
	 9BHoXFeTH6jOWgzpSrXltGVMSbshPkRC3cZ4o51445t4OWjeaXHBYPAfzkblwGYCr4
	 NjFZIT77SvbxDXSqbIdF7Vdf0tLoyqzapF5FhtbAoIGRJhwXv48rAWtf0Z0tbqHrfC
	 JWWNB2vPK0kT7JLaF5ppkTtKKDOhPMDseFhmg1uSb/DSjpVI9VNj/H1Biq3LHwc6Of
	 onDZyk+Kj4oFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A887C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166822445436.7186.8517521921596460123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 034c2bce4ee5972ca98339ee4d2797b1679c009da1c2e3c30ed8ab351d7353b8
Date: Sat, 12 Nov 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668224454
