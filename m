Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3F536A
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 02:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B40C433C7
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 02:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692240788;
	bh=P80gD+pgDDOjthGhtZyVsqadu0TN3uJhqlEPVUgu4DQ=;
	h=To:Subject:From:Date:From;
	b=TW6qu/64a7/3WWAOAB1WvIraVL+vkaJDVOmhqIj6iPSYRCfRgtbpngCb4dP+ePicu
	 1iavhshWbUR7kvgZCROhYJnLrypANawuRzhIwqX4dWnhOdIGSqJjs80nh6sznLW+rs
	 8cN7U6HEhfHp2Spr1aG98L4qh7SYcIlRosnEAvzRuTeij//gPz29DnYFOKZKk5KojY
	 LEx1ODZoKIXO9Len1h4GSdco33yYRTCRpwz4VoCVp/7Q9jFbSK0mhrUyqafuXOdnSa
	 G7ThmBBOVGiqeMMu0/jAppEoG0R+3E/+pjE2VFCO8FrNLE2XcpfaD/UDk2ag4BGN/b
	 F2jpsO9vmDoLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A69DDC2FC0F
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 02:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169224078867.17073.15723360132157590323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbdc30e45b4e7d8b4eb8cc74c361b739cea89316b0636e626d41a17a2b8e1e02
Date: Thu, 17 Aug 2023 02:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692240788
