Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8293F1FB4
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 22:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4F69C433EF
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 22:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685832485;
	bh=j+CGzxvz/CHYS+HNGsv7rpn6qfKBxbyePQNVV01ocaQ=;
	h=To:Subject:From:Date:From;
	b=AkYSYID/dLnz4VFq+SVBNetm9+Xke4jTQoa/TT7xlgxKSmfdt9R5Wyz4lOr7vrW2b
	 2t3XWI3oDELJUSttxZM4ZKWzNX3Yw2ItoVAcL6gpjMb8ljB+4ZOJZsyMQC/tDh+YDn
	 K7lHUM7Yb2CtEXzzVk1R6SNyxucXnLt5QcH8MicQfhNNnNrGMZlBbc+9JUSd1jbQO1
	 jdPr8GEV2Gmn2V8Kixggu5Lga/Be8WsB2HExowJEaDyPOPtMtWeL8s8ePU2j5EHiYd
	 vtz5nOM7sJoTLTeKsmDB4gfXC/ZJmX6QugA1sOodYeja30KdV1Ec5KkAMkg396zgZq
	 +RqqqsfD+pT1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0468C77B7A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 22:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168583248577.21971.13163146873203471698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c475969fcab98846301ec0e805d2cada66b9789ddabbb06bd05e404cc60c6390
Date: Sat, 03 Jun 2023 22:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685832485
