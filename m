Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18767B
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81C87C433D7
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666086653;
	bh=wsXNSS9KyMDq42gmeRr9sIn021ZyZRLmPO5E+EfJKSM=;
	h=To:Subject:From:Date:From;
	b=iXpzc8CdlKFns3+DQxPXXEzo/qKJSWNTnguYT/7a1dHMxd8WVwWKEcye97ZaFSM8D
	 CetXjUQI1gLBxKNIde08hqUA/GVQAoh2tWEILwyTBi4ys6YBJSyLAXh9h1KivHjEnX
	 W8qTZ3hjIi13zHelWb+l+y3I2NNQ/7ocTU13JGNNanGBFQ+Du7QVnTHE6GUB2UzoEY
	 Tcfsb/I0XTxKUuM8aAbOvMeVZreWOKnpwLxbk8aLSotR5JpsuxUParI790vkOK7rsS
	 xZtB9OLWrCDs3qBSKreVrnCpIExHE11fUlm/XamJBP6zqi+DcU58LDcC6qE2qgNibT
	 qDrbKzL91MeWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AEEFC433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166608665336.11082.65895508867686650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dafe9b1757a84a8a033c14bc9b6a9791f6cfd29ef515b064ed795729b542673
Date: Tue, 18 Oct 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666086653
