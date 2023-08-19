Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A8681ADC0
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 22:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCFBC433C7
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 22:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692485048;
	bh=sdXaeJdxCSgTN5lqsdt7iQc8p59HPCqPKTrl7Y6P8Nw=;
	h=To:Subject:From:Date:From;
	b=uR1YiIOjSmUuy8UqjH8A5uh1k3kPYigoP2IxcB39aZmYjlBUdRqzETaxWbAdgnMG3
	 DxNKmoBJebVnCNE3lOBU2G19kATByWB1UUfyx77KFYmVOhwPkMZop+w2f+xUaWM3mw
	 c2OWSdtll67i1kuV4E3jBIZYuNlsml6/kYdCqfBisn0XOjf31R8sbGbCIVA6RjpCvl
	 b44DgVqRUnQTEACAvB2EHTnArcj23zItrUrjqeGyQZ7MqCDTn4unNAC4LaIt+JFwGy
	 Cke3Gaa3pDCH8xi7hepwD21YLNzfXF5TYTRehTVsAD83Ud6e36B2jGmkiGO6m8QkVK
	 Ywf6wTX1Qn7DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA6D5EE49A3
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 22:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169248504874.17034.10914811671812721681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de4d975a13db1307e4205ae7b90a2705bbec0a64388f241a3ba63b456a6c243c
Date: Sat, 19 Aug 2023 22:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692485048
