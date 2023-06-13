Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79F7D7F
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 03:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E92E7C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 03:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686625565;
	bh=A46lp2y0JPmNJcI+SzmEMQITy8SuMJVX7TyFTtH0XTA=;
	h=To:Subject:From:Date:From;
	b=lq4nO0bHItxJZywjKuCtPX7uUwB16ATKhPAO8ClwGcmAcrL1MwRYy17ox68MkiNS0
	 h43xRuq7i5OTkDf0tpJaGzt2Udkl1bAFdcWQVZCFGAH0uTibXdSUkwOxhznAnylbjb
	 f9bI0IfQpcFyPoBMMVst6Ho/scZaF/OLS+oLCbDrycaLaBRS/0hBxXelsZWvr6/O4W
	 fbPTPFdJEvQgvlW1JM6Lb5Grr1B3AtoGQof4WhpXeKvoaACVhFDavTDXD2mUmWSSQX
	 3wdyMeC6Q7kZ2Es7k7Eetrw5NrU+ZJHc2c7S1V1KHA6NfS8/kjmOyEhgztSvvRlCz5
	 CRaeyegquP4UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7482C7EE43
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 03:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168662556580.17639.10483521430486513448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8697805896222155a3dda0c84b88eea5a2de2b4206d00d28be0458b4e620c3ce
Date: Tue, 13 Jun 2023 03:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686625565
