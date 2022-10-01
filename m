Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D80D32913
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76365C433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664649053;
	bh=wXhpGmxsbErDsJKQH5VhqBRLtpOHJBtioibmTSdX2sw=;
	h=To:Subject:From:Date:From;
	b=gr1hemYPQJxOsUFsCAr2TXIoWi8khI4eHenv6n2/xT0Q2CdVTr1fnLUPaDrKxf0Sm
	 LBK7LbsNBThJGxDpOlkipSATAkfms3ghFKNNuT4mXchDM8fcHjq0h8ccWF5TNprLrO
	 FFtDdPKe92wQfWbC0yAEHeljLaoWxCH0PsWCrF235FEFUKLQhb4lMJrNRAlkSKEzxO
	 90xXq4vy1Ff+Wk/H/HgSDt7SUkLBmNCQR5zQ+jiA827T47yFAiH67f7JucZScZYYOn
	 Mx4UokRqNfzB9L7YJyj7sDM9DZogSiFyvf9dyN+01dlWkDmNpQfP+SOw7JcmMlRTTC
	 rVxo4+ZFY4whg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55968C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166464905334.4099.15223598231980931632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf326001285d313a78703132847c5e1a365fdf32e1e529294be12f4de58831a
Date: Sat, 01 Oct 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664649053
