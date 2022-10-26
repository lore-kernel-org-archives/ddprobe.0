Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E4A1110
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A9FC433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666782653;
	bh=97xozFYRksfmPJc0NgQSZqxaAY+L7eC1VFUn8UWTTHw=;
	h=To:Subject:From:Date:From;
	b=paZQ4x3Gq7hNNpCDAkK8D6RM1YSjjF4CjvITd8P/XFmbzmd2weuXOou/NwkJXPM3q
	 b41+ujPhDL3zoBj1CnKrLdpiP/dGNnwjZReZ0tjTS3xC/+rHS4Png3MwE1qS8HaJ9Y
	 pJ0n3gzPn/RDehhx5+DFPYVxXURU7O3ORqSqoi6/O142lXz3pQQtCqMBc01BMdpX9Z
	 +G8BTni+U1EXIpAXCgqVw0UPkHgxmRvp0x8kPISYGHX0MUyw+xWPlwbLnEhb8lxWn7
	 ukckcAjIH9KKglcnMTOImwcmk8+p0IjLpeAMMILJlSUnPXEyH/2VbwabzMeyQ88x7e
	 plXCwmsFuryow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B31BC433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166678265335.11482.10060829199910911940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 696168fe34b52d4b0b642ffb8ceeb816138eaee53b1be2ff6d7fcb7a064967cb
Date: Wed, 26 Oct 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666782653
