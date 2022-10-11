Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C415733DA
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79ACBC433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665492653;
	bh=yDEyPgJbpDz6z1V8w1k7o6Xmm6BdqpL/NeEtJa4syBE=;
	h=To:Subject:From:Date:From;
	b=C57WsilepvQE6cv9jJ/JzDIuLb2A4sZMmDq75uKvvd7wQKHTKtk+c0GBhF6Ls6CSz
	 7USw7WwO34FgzMZredTfJ/6SHvw2RrDqN8o9l8Vwb1ynWlaSmuQBHZ+Cn7sokpJYyV
	 TctpYPpvK5mZPgeTaCBtZcCfmkak3Z7jVEaAeGnr8QYZwNPRg4YF+IRXBpA2GlzgSx
	 fwPPMBa7GPlA0wuMLTY9Mdut6yEK35Me6dgb2yDlLAIIznyI5/pQsANDxKHun0ue43
	 aJbdY6C1HMnt07RZzyczrCR5+bBKj/r/4KIcl7OpPKaDXd7vvk46ruefITBsMOqVwi
	 i3cVqnqIZr72w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59170C433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166549265335.28627.10310817960118713219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac8cbb7633ee7178c057627482ae4b0b7a1290f00afcc396ac3b11fa3783559
Date: Tue, 11 Oct 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665492653
