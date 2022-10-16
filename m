Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB48803
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72687C433D7
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665894053;
	bh=ojtUy6WjDD/8bahs/ojZBp+eI1k3eTSFaZIJaljGpPI=;
	h=To:Subject:From:Date:From;
	b=mRoRYCNrFZREHpvX4gZ1i42tUtAlo/cahWqbpEKzW7DVvZDhMXa3uVemcopdGYias
	 /US7bXGit8MVcI988/WQaK2/6opPpsCIV9WRI8OpNUusfw+fhJmbAxVts4SHyXSJgE
	 Te7VnpgqwtIwnseAn8ikdaEOnxij9wfOo0aW3Iz/ssErl4MShUON9FZcC5h0uTBf3k
	 2KNA4STT35zxdkG2e2NaYbupI6evYesUnx/qR5UhOfaVXEG60oeEPCpi+1KdpEIRUx
	 L9hcZPZEiutHNweD0ZFgJktZNN1Oy6wM3e81iGgmiWdzEqAR6Jtq7MomosgJtO8ogn
	 /ECgAqS8RLItg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 552EDC433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166589405331.17445.11335848575133882645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55233a2307dc1b2246db6820be0a51062a95a09612cf4bc156dbdc1b9e77da98
Date: Sun, 16 Oct 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665894053
