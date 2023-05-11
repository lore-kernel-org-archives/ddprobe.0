Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E70E19E4F
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 13:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FECC433EF
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 13:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683812045;
	bh=LAqJGTlYUFbNt3qvjRHULsHS7QrFLZHT6LGgzH4+elY=;
	h=To:Subject:From:Date:From;
	b=ATAoIovS2oCClIDy5f3twYuim5A7PCk+kd/b1Voc0azD8Yr26+kB+YSCh50EGjVVd
	 ePYqkcfzyarNgFqNUxBX/I7chsg6CqnD9wafeeopLzTlnKiKkMz76O1SEEiTEimU8J
	 /wUST5tiBzY31joUpJ5b6O2aUb714QUs5aBNleg6WvUu0PHZStTIgV56nDHpT4N1of
	 FoQe7bxqK5rGZ7Mt1jruCrEPTJz0phAOvfDVmwgtirwNgPNcKLiVya3F26WaiF8aa7
	 3QvUAxvu5ISmzwlj+5Yot+QruyFaUo8Z3z8BROiaRG1A7CNehkONvPRd+StOMYj7U0
	 KaHNTAFHL6RcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD9FC77B7F
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 13:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168381204576.27488.6132968296514493820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21880f2d705b734c51f37c93a907f51f199613167b36f9c3a4eb69a97fcee47
Date: Thu, 11 May 2023 13:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683812045
