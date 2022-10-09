Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB017E
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A69EC433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665277853;
	bh=AaJEus8CcI86T5xAf/7tU/LLKU1/wGHATCcR7wn/j+Y=;
	h=To:Subject:From:Date:From;
	b=ZHtKclheVmva+RRme16X/qw4UTWNkaA/HEFK0Olx8A5o64U2w/Qr86n93xdWMj39e
	 JmJ8yX7eOapnw2iDDk8VeftsdHrCt/2m56hNKe6gUdWcbMkKZZMHgHzYyVBJllUjtx
	 FBDA2qa6mLBBS5sG3KBthKI2eB/RwkxiPlxqihVTD9G0o5T1EZTY6oyo30gOlzkwOJ
	 TV+tgogniJ2xxdtXIdJrckIWzgqS5rMEJ5Z5F+Lmh9YrE0NQ+Z3B/YMCBtaj2tPEWX
	 9Sot09GeA57iSBrp3UiYecxUKfF0Cy9hvAsmTCfxY9tAwBJhAxpc9frhYgX4wwPcBI
	 f3H6Bd7MswQkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62D61C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166527785339.24770.2178733300409339412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c8124a6c28a89a3c398900e635ce81b984ee4232793ba4631777e0c1984557d
Date: Sun, 09 Oct 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665277853
