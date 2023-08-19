Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FB7310E1
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 22:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B0FC433C7
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 22:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692483848;
	bh=egqIXHA4QiRThNrJyeIJ8Oe6PscNj2D9RM66N07QCYg=;
	h=To:Subject:From:Date:From;
	b=n7hQ1S8DKiPrsPZaOKpKg+URyGWsfInV2l5bSWqJ6al0QTwydPUBdUJWF3eRuzfwu
	 /T1jO2RvcG5tWUMGK2y1Dkdi2IqlyvexyI4Uz7Ejg4Q3sdxA9hlbnk6jxTZN7vWBAp
	 x+gKd2CzALvsCo0suU//3qJ+Ak46Le5T8lfJ3dN3RjJWGxh6yVHrh8IdBODLmsu5QB
	 sDP+EaUMuQHhQo2LKFwAjINxkopXxj2xUSGfQPDVSTZMH4hAR7gmcOhL5yxsHlVVI0
	 59lnlgPTkOCxZjrSjH6mcqz8CzmCW8oJqMMdq9ihH9AuXv2IQpGd/dMtqxp9iwtyFM
	 OdCcYvlh2LP6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45CDEE49A5
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 22:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169248384870.28984.424810082106043367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0270333376bfbbc68325a8986189202e27ce6faf2fd0526922d9f811c3458a6
Date: Sat, 19 Aug 2023 22:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692483848
