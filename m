Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A4D23D41
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 18:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AB1DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 18:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683917106;
	bh=R3gwQxw+b47ZBRLu+qK3pM63VsIbPqjNaGFVoO5iV8Q=;
	h=To:Subject:From:Date:From;
	b=mq4OtOt/8X5QssmhYnqQV9JspzKoW3kZdotPA5mIH2ofTX1ja9wwDT1zTElOZGO7w
	 TzeL8Yp9len20pwIefDcxUe/0lbCEKbZZ/ytlLhu+mflgzLzfRJKbvaoO1wZYnMOCQ
	 riDO1yN6le8pAssghAwUmXRvH4cLZEiXO1m6ch3G3QLMIUBx1wIEuPrkT8J0DYpZDE
	 4xpwPH2lNnXcICZRxLDoznjYoTGSLGZwy0DphX+0ToHfLa9Ao7UTioZ1KRlbNh7Hxu
	 03yybbhM0ygnQODoDXiETAGixykRY7plHHJ3oUTHOlf4KDh3Nap9OLHexV7DVelyrA
	 wNYZpLPBazEOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1E3BC77B75
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 18:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168391710576.13385.16652650548586413679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d934b775c12e1ebcefe6a87164dd03ba885b3929909c67377e5b4aa1fb911704
Date: Fri, 12 May 2023 18:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683917105
