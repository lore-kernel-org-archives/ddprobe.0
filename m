Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 713EE539C
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 23:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE996C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 23:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686352085;
	bh=Iyrl/81vVfwFeNDvTLn4aDnsazbVprR3BKXfAuemNkY=;
	h=To:Subject:From:Date:From;
	b=k72yTseCEZ8asyAo6ffYBxaRFk5Sk+PasBdivMrjpaOW19XuoLps6MUMbnvodYmjm
	 OozGAfrGutBgWjiidraDVthrsReDs8GeJlQol+XPh63D8bvkI0yvf25QWl1WtHE7p0
	 +cWveyJrBNnW5G7w2QUyAgpkmAcETrNjcX1c9tGTZVRjRhAISVaS09N6Z75Ys9aAzn
	 NhET8KVQLw11IKW9IZeTzXTuq5lR9gKzowhCYdh7hys1UC2eah7a1w+ThJo4Gtaj8K
	 35tPsUVBbAaOdLtZthdQmrBPBfv5NIRFWrmGt2B3MHKcX3WB4ZyNNCg9MW4q2sqnkp
	 +mu02fZy+sIUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE015C7EE2E
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 23:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168635208575.369.15139503318890050802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33881fc9ad543c2f6d8ac759aa6558ecc5b4014a12d7ff27936bcea6d2eea211
Date: Fri, 09 Jun 2023 23:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686352085
