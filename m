Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F187E
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68A20C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667333454;
	bh=ToF0wLnPNTojovIxr/mc13Y8k68hHro2tnYoAkZ8NOU=;
	h=To:Subject:From:Date:From;
	b=Z+u6uXxQFebkh5u06+jvGfpXPyND7v19JJkkxRCgFbW5T/xJKs4gFNLbE++ugUc6u
	 BQqAE1ZXUJNAxk1Yf4CdYdbSkp1YzMeVbXcwGJVin+ODHWbrE4VdqkjHJLiK3M+p9o
	 ezTMqsLx8bW4/pLZJ6AeOLJ9UAyutOUYw7dh/CnMDveDrr92PT6C1KIDyu0CIqimW4
	 x3sjqBLbpe+Q5TSK2yd1mKA4eEd2q3CW9HxQJXnp0AjHad8xN1fFxWdmGjhU1ST2ro
	 zLErDyh7QKWtU+g5u+I7sQ2tNo2z7tY2bRb7NNop6+3zIj2Jge6H87tGnlRqDaSwYu
	 bA+zGSBuM7SxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50174C4332F
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166733345431.13610.16062491630305204620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89ffcd6be0842d4d7f633ac51cb8923544815d04a77040bbc57f1ee930f83a38
Date: Tue, 01 Nov 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667333454
