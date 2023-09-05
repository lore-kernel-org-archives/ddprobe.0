Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B197FED9
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 10:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CC0C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 10:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693910048;
	bh=z3CkPXjuVWzriCC9UQ/OwedacGEaa+zqYf2C8sgbKAs=;
	h=To:Subject:From:Date:From;
	b=gGSu04ukAFiKr3YsNqA5Of+7wJeUsWQUHe0M0+6kENxevCV88VfkEcYRiDrXC/AKO
	 imwdaRj0nIttkyevLbSsACgIn2pkE9JjSc7ELh6c/Pg81m5uB5E6VWssdRptNSzA4h
	 S9Rir7xiOTWozYtwVh1P4HbCS6bR77H/Djb4CFcSSKfwanC7rX8O4Ic8HnnFvRcTzA
	 rmzgy7G7XHxOeWGVxYNXPTtc//4jaDAQRERQPVVSPhY5TlP/DFffT2mGx98rxP3sYa
	 QEJFd224cRJF8nPiQa7v15/vhDWBI1NCanvlj7KkRruyHh/FCQYBAJ93lR1GwW5guC
	 SMalk4Oq/re2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A59ACC83F33
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 10:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169391004867.14575.5347800064420621204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b4140c37390d1e2247c607e2f931b65eac53fa8ca626927582f870ab838b6d5
Date: Tue, 05 Sep 2023 10:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693910048
