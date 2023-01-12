Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE9D378
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82789C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673496687;
	bh=c3HNxm3ZbCCe+SiZ31xaDBATILzYNUZXhUEPvzDKt3Q=;
	h=To:Subject:From:Date:From;
	b=Vye7Ii0tySrZRqrQAQwHo+v8jy7DSB0qL0ws72+5FBE8Qx7jErhmTNE/L+GtsNQ6O
	 3C2r8sJ1DH731Pr/RgeFUbOzIUQnAiIqhZUrHBk8KBtaC2AcGZ0JOwIx7+lg1ecRod
	 KjUJNJ7FubZRJ+nTYZx2eIMOAvPil/r6HsDshiEy1wgf1csfRjOSKl6XLMcLPyDNCg
	 +jGWUYHuL7FV82jRnvIHN11xk/WSg2lb9tqnXtOGxUyCp02nZNCHHgc7yFQV9PBbXw
	 KX4jWafUJpYQrh68I/2Vei5HeZG+VBS7CMM37k3k0A5DNWMPa848PY6q9vZOKb/Q+D
	 Kwj7w2qiTteUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F97C54EBC
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167349668738.15244.14643975116254001542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f64fae27dbc2ddf1361dfaa920cc856ceab52b5a78350601d7d46b90cf33a02c
Date: Thu, 12 Jan 2023 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673496687
