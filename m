Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8D41FB4
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 12:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2908C433D2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 12:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674649385;
	bh=P3mF1rwD43UlgrBEpJ+6+JVjYEVnhlxaO70A/BaWcSo=;
	h=To:Subject:From:Date:From;
	b=V1oNU3gNHRcLk+zsKCb7CKidkRMG16bdbSJRjcj57sf+LJNT+Az5mwrDB36Vh/5m3
	 qwjfLoPJmU7vS5ohBUKZb1t6IQlhQ2jIuEYn8u1vWbANKpTfJu8Vi85AxzRA6ZfwyP
	 r40PEI0ryDlwiEHnySJ88/i3AfUaAl+79oK8K2fCZ0p1Y6evIPp05Nz3NGI/rDgYhK
	 QuCLzTa0KNZInPGL1Vg5uwBFkmydqVOhsK1sh7Dd57BNMSreab3N09ifCpyttEDv8K
	 yI4+PRrTt5thJAmZs0wzTMSkj2TXDYflpXxjKFIBdWmdeGMZBwmfSADsJh3kl1DIgd
	 ydyQh225hL0nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E05C27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 12:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167464938574.22791.7338898187165185370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc03c64603a936c5fcc1505143e2cf10c0e2576df762d6079db554327830abf8
Date: Wed, 25 Jan 2023 12:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674649385
