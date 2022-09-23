Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A113C05
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7558FC433D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663934453;
	bh=ecKngLTz2EMzQP3TEE7ilTwIFwvZRPUpyKSBIHFF6fQ=;
	h=To:Subject:From:Date:From;
	b=lpawQzaV0RgOYW9tG5m+IagpCxFPBZibJTlrQ1hzbigpsYa+hscVmsMHS5waMyj0X
	 NrWFRiKiib5Ag4cZg8NLAcotfUT2WecprqGzVF9tobv/RgL6A0wJfSAtbDKdLq5xSO
	 Eb4IJ3HG6VDfra6nkOR4uMygPkUvV3uEm4ywSr1lhzRNFDJ5COiy6dzcqgfCHJ/4T+
	 GA3HQkS0tnERuPcaCRViPY+bKjkrWKF8qBo6swO1gdeXdEGsm7Ui+Xo99t5g7IgTBZ
	 bIUuQf0iGd/Re/gpR57iSZKgzNU4qzEyjFxoftRrERcitTan30YN95zv0aY2keXnlk
	 JhvbuFVCxhGng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EFF6ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166393445331.30295.10713670324456342545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5d3971ea490fe91a3f391d12349c4a0c07a0a3aa370bf1b704878f7fb4f4d06
Date: Fri, 23 Sep 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663934453
