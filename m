Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF2AE7F
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AEE3C433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664157653;
	bh=Q4t9ZbpaUsRxjZPtUN+8pqas9RV9UqeDxE5bDBtppHE=;
	h=To:Subject:From:Date:From;
	b=Xpc7OMlzZeWdSnSNYTSAKlywWbJ+4whUedf8Y2N+FXqxR8lNz/dvOtBnugPooooQr
	 EIRIs30t1CbMInrF0R/IHGh1l1WUlqStNRW74eLq1UlQ5E3VX5IqV1jbN+kxqqgsjd
	 +Y1DsUl5/jhbGPQe1IZgLwyCuWc8NtM8bUIHLMkRv8g00knMn8L7WzZbG3IT7Uvs1u
	 uRBCnIgsEzJtFximyUkzqx+evioL1TjDfk/2W6C4JzESUjiaEL31P7ISQdJFQLHIBd
	 SC2jFl8IkWOUAKYjg4gY+GRCVdEg9qC+pj22+H9Wja2pNd7s8ckurGWuNmiCI8jxQe
	 18JRLFI9U8dGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59016C04A95
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166415765334.7889.1283491365027752501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f93178ef575c5ae06ee66be2e483a1ab6eddbc55e76b187dc22e59bc6d6fd69
Date: Mon, 26 Sep 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664157653
