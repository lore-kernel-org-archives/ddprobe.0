Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5975F379
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 01:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BDEFC433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 01:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679709066;
	bh=/sUzfSVag0PwLEGqYAzGTKMWWx++9M+WCIgkYwezI5U=;
	h=To:Subject:From:Date:From;
	b=E0YAII/gUiItykEabxeDyp/X14wRp3/m02VGA+gD94dcwkUD3crLUqJ9GVX80vyML
	 EWEmaHdlE8bFUboF9HEkGh07A8gN3jGxe5SOxTa5Rf47Uw2EvCPNLLcMeu1lSIkF6b
	 wKR+QjoADnC2cldefbRJ9XIIRy01ubSiN4kNWCSjz2cG+GsqgyqvpG2RtBPU+/hgTU
	 QwigcZlh4nPEeXP+0hAHeoXE6Du9Bj7Z4vh523huTQsMcJ2FomlIDGe4Bo6BjptsSb
	 6erc62FRIvz2ieLdQEaFhCYQaAbzvadSQlvY8dW1nnvM1agjt+DHVBK4LiYaJsJS6n
	 Fbj9qM4p70xGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2323C6FD1C
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 01:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167970906576.8551.15897719063615170538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7948d077cbe341f3733933fab677146aa23e22bade048891b6492826991515b4
Date: Sat, 25 Mar 2023 01:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679709065
