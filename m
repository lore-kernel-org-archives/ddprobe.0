Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028A12CA6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AE60C433D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668873054;
	bh=Hafp+j8nYL1KWvhtmIuCO/gQoWcml+jOn5bSEd7NG38=;
	h=To:Subject:From:Date:From;
	b=cwbotYovK9iGfffsmirtaF7Zm/CAjPk8pQXCji/uVnZOrf3rHX5wC5YLzar/XnKop
	 dke2EHehITBnFZSXXt4MQjxkVXsOMMWwMLVheQX5QvcvjDG7djegYpANrDVBoYOb2N
	 GMxFUPdb+CJ153/98FZ5Xn6WKmZKzZ6UCzVtV4l+hAI9ivIYUZiiJGTP4m9nVGg2RB
	 IX81mMtAjBzb+Q/uqSRIc+Yyqne6qj6jfkfMn6nJLKMM7onqKfberj9Vpb4uuTnrj6
	 RZrgSOfRJwDR5jzrsV7woCzRT7KfIeFoZT4g0ES7WnBQ8y1Fzpdzi5nR5spqM9gJAH
	 ohWMXRi2IQJzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E852C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166887305443.14740.10574074519980376303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a00a2fa34e8cc0710fe60b55fca02b6b4f822873316472d3b2727a7ef38aa3f3
Date: Sat, 19 Nov 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668873054
