Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE93D17C2
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A087C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664848853;
	bh=J3LmAYisMLQ/bCIVwgWmPmtZAGJQDQAGWefd5z4Fo+I=;
	h=To:Subject:From:Date:From;
	b=COxELBBrx+5e796FrY7LwLhTHknZdyGwUsHbaOmQBzcDLimhLix5gZweWrV3AEoGe
	 EafYD7WiFBi99j+AAt5Hl/VikOeZH84ZXqb1jsnl5xm2PkQbidd+e2ADwGAywiNLj/
	 YBOl94QCY5Q8sQeO88mgq+89gvrnkNI9IjbMQEUrih7lmQNCsN6Dv6W8JInA5kkAWt
	 Svn7xaWy9s+9q7mVhoM2kpQpkcRQc+AHRUahluhPN+axb91yvz1oQ8Se3yTqYThKtk
	 Bz8L8F+yzA5Rw1eGk0nk9aoYKb7Ir9S2XTbWGAPeOopwBuMpolOyuEW6xneKUn2wV2
	 bjX2BlTwwtvzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD10C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166484885335.28987.8445601297697461225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd7a43579ca8268560bf140d3beeabde1f98018f68004fcd760a4c121dd6b48
Date: Tue, 04 Oct 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664848853
