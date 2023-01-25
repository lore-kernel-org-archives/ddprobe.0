Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3B16FA1
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 18:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F28AEC433D2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 18:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674669786;
	bh=n96WTu8N0XxNMpdpiplHL5JTIqSmJuiMisby6/ubcdU=;
	h=To:Subject:From:Date:From;
	b=Ole2P5+KtPI/0QqUz9+jA27jSFCx2Jq68eHcZCSTcwEKXkA6pEMwlmcpDVCoHzvin
	 VvYFyZ4GZ00vJRs5C8HW/Kiteq5FbwYPeQAcA9B1KqF5CtMFbQ1oeRbaqrXde1Bplf
	 Kbom8hOwCG8y+8seXmXIFWGybeL5gEz6xn8TtrtqVdJQKhEUF8MC2Dtd6NgQ6CjLna
	 7pV53kTmJCpb12p8bFEqO6KPblb1jiOnYFi/VCiVjdnALOay+BzifuTFiWl3LN+hCD
	 WLDRkeKBOWa66AArC/ZdWr5zeUwzqbdhuNu3och1GS5kPmgfy+GmQY9Am8m85fw8wd
	 8P02lTraNfz7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9274C27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 18:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167466978587.16457.18337330844552749267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a2d96128b912e3d203fedcc422d9e975f44e063e7122d51c36e4c1e52bb818
Date: Wed, 25 Jan 2023 18:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674669785
