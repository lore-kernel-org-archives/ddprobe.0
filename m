Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5237A3232
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 11:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFFA2C433D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 11:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674906185;
	bh=NBlWh1Myn0Aiatpyh+8tUifj4DTHfZv0SmsmGnjl1Xw=;
	h=To:Subject:From:Date:From;
	b=By7FP3kAxqSSglJ08Do9Fu5hjY9o8CMOa18fsF2S3EDLklsdM073/+IAwqPmsdIIh
	 2sPtkLlR79A9rQtPdJlP8MrYHNCQvRf9La8HROVGOkWOfIjXvfaJxR+a1mhxb2Cs9F
	 hj0mdiSDAZWHLlqOPgV7SscowmkN7iD5S4ImZ7aiFdYkdz8789g+tojbF/PCRdDpb2
	 tYVOsif6P3zen8j52t0jbXgQNKYc4kQalHCSzL8wqmnUlUx1c4E9GaX4aFyVXg0Fyy
	 gXGzTxTCtlkPklq2Mr+0wcX/U2ID0aZEg1W7dsYycMIGmyKVQka1mKuwtk27Gg+TAC
	 tTAm+vgt8+wgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C32A9C27C76
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 11:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167490618577.8966.11120138016452404368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4993d0214452ed4bd34b5caabb654da5a4f386bb1797dd0d0fe68a40dcef6c3e
Date: Sat, 28 Jan 2023 11:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674906185
