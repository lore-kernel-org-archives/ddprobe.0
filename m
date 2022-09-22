Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B715E2CA2
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 704D1C433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663873253;
	bh=+o4f4+4mXt3URZXh/VY9Z2nFDZ8rtSQeyuET/LONAA4=;
	h=To:Subject:From:Date:From;
	b=hn7ZNE94kpq6TY2dsd2QPJR6b8fIgexZen4qP7OV1NX0Jtp+ulbS76JcmXnRyFiUw
	 My5tqIqj3W+T2jf4ewLZ3rz6iRc2y8YXBsLipNqRShTZ92gxvZmNpMlDaTXOUmIAeT
	 KdAlptg+Emb9zyuMLBtpRDbvZpyYyuh2/nKNVsyoLeWD382xcWHc0cCwC1D4EqpqV/
	 06ZEd8zXZXGcHmZ4uRfhaymbEAYtHobWrS6sT7iY+P5AFxvUzU+Wf+qYqyt0RR+Akc
	 BpADGmL4qOw/KSNGluuA41A/pt3kVAuususGZsSk5y+Za+WPluv8gmKqzkt86vkFKj
	 KC7ti51SlEpUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C9EECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166387325334.21271.1713520610780666014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2afc2222acf307e7d4a627f7d8da17cafe4fb49f493b35dfc9c2aee288e2dba7
Date: Thu, 22 Sep 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663873253
