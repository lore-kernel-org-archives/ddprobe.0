Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134DF747A
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbpYJGE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86246C433C7
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698053296;
	bh=FZd8ROMGotMImJfDzilF+IQwL1IoGT7NuxUZVKnaskI=;
	h=To:Subject:From:Date:From;
	b=kbpYJGE7YtGnEsuL9814K0X0yuksH19YiCKKcWtcT+wzKOV5e76UOCDhHSRjUf3LZ
	 Rcb0C19njG/d+ozuN95x5YQJGLCGfKwe8otrUq/hp2My0hcI0GtmEa/QzlBt0uDQut
	 V8LVu5sNMGu0QcNl/Z+IryLCym44FZl+TXlkNMDFjbSJEvBYmQqHNDru64APCo5SBX
	 flW+Tkzf5ox5H571LpnPiy0YHd42JwC/n2ubQK3fquz0SDHCue4QbsQPyAwbfGmeQm
	 otPvtRoXbN3ri1fNC/K6FgrH5duyH1RiUdRzaQq+Qkyu4IyHlL2f3rrTUCg5sxiiOr
	 vGBuY2ozlqiAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6240FC004C0
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169805329639.32371.17905601648916245010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52e4fb636c9798df2027769111e0139d526899b58a03cb5d33358eab04e2088c
Date: Mon, 23 Oct 2023 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698053296
