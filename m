Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F403136E
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708997897; cv=none; b=F5QoUAPUVm4Z5zxj/AabO4w2fkq7wupFaHqKj1Vw8n4mYUWY3rnpzc/dROTvnH2M6pJYxoFV30eeM200qcz47DJz6iCgVJft2b1C5NkuvrYnlNVbBbDTtWkURfsoHox/bCJKevZlQzusF94wMEXM5bbn0FdAtrCQeCAuMMja4U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708997897; c=relaxed/simple;
	bh=bThv5yRxMsqQBUFNskCQNBenPWGwqWkr2S778BmdARc=;
	h=To:Subject:From:Message-Id:Date; b=DyldPABpZ6FU0pQm07tufUGyKnZYvfpCIYefUGLaGdirIq5Z3vTRzjW42mrd1QTgdIXY0Pyypqu4Xuak7UM2Z4yLnvv59WKAkQXPoEu0n4t1alvD/rs6prrm/cJPPA6YljWIzAtPgsqFzTvo+cjWMGy1P3yYmk1yoBl5n5f8yRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSxH7tCr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSxH7tCr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F8CFC433F1
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708997896;
	bh=bThv5yRxMsqQBUFNskCQNBenPWGwqWkr2S778BmdARc=;
	h=To:Subject:From:Date:From;
	b=YSxH7tCruGjDUJH9IDamBv/zkCyr3zj0xDah0OF2pu/eMhTUI2QlKOPGnE2Cnd11g
	 a8mMElu7i0wLZRs4LGubiD1cgJfZLTjB2W0+1Dl/qsQZawNzb9g2s+fBptj8p3JzkL
	 fO7bGiUB6hrnNQPVp51KAHQ3TZCP7UuojfeFT6l/yR0tY0VGVMT5m/iKxIokEO4u7l
	 4gbQ8OcRPvHy20FsAnqVtRAUD45bjCVmSvTkXQ344KrDHTW1iV63VX3pa4hnjvYjl3
	 2hhFTqgWjMLc5eY4E3Ps/+zguXODzoT5FpHp72ZNEUE2Y0g2aoLnH4CTq024vjEi57
	 bo/y0RKxXsXlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62720C5478C
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170899789639.1180.13038630072309514018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5703cbd82ed81a448a0397bb89e976d1bcd5d2dce41b3ea8f2dfde97b7bae61
Date: Tue, 27 Feb 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708997896
