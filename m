Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB97148318
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729584354; cv=none; b=ITwaoIEsl/AMbauh8rMipDTYMpjY6ufOImzBC3mgtN0Kd2GXu/hJJ5wujS2mEGvmm11DdHHWLgLPiJKsRiCeJcDTWXdKTOxADJ6D0OHmnsb13kjkDhh/+7be/2sJp9NDDR+DKFAAdk8qDTDhA8ie6FdB8NzaLoMqpUH321Cvy8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729584354; c=relaxed/simple;
	bh=KiMdJ4TWxILPcPJ/o4EeGuwe2fk0nR8fQc4Aku3RiGY=;
	h=To:Subject:From:Message-Id:Date; b=EIjxqXhREylCadeH5pRi3GoDPuEOtV7PQ6UH+UiUfRsLZswqG/i+N4f0D8CZaYxRWwOZbU66ieB+lE4oSn+FourbOdwHbIrq1h5UJqQTHFW4Ump868KuIOz1mrIRFCePbV1tKVb3EJ2SWOwy85WnULlAm71WeLJR+Y70EGlNQ3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/IWifEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/IWifEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99D6C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729584353;
	bh=KiMdJ4TWxILPcPJ/o4EeGuwe2fk0nR8fQc4Aku3RiGY=;
	h=To:Subject:From:Date:From;
	b=C/IWifEexfX2Ek+AiFS6VlH3b3qneLepGhgwhZck62KqvvR7ZBNopncsthUzYxzEu
	 AfFtJBIDcxsezdFETdbl4Rwsxxxws+gf2nCZTkMwOJAbs1reMva1XxwKi3glqJx4EB
	 Q/iY+Dw5cwCgYs6+KzQRnevOoC/Q5zRiR/eTzfiokjR+ogTgZpPvDq6TBQ5Go8pFtf
	 Jme/MerTTU4t0N4T0U8FD74gxOo6jY1tEy3CzmvAa9/uCAkFl4PBJg6cNcE05Alizh
	 ilV6MpCU5XlqYkKZgRSpmsgf/pACKaL3pAX+V41z8NAaNeAXv/rAugtC4xnF+M8RG7
	 mAzfO4aCtTBKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA703D1CDAD
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172958435367.4969.4991369505121813567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 807ccc56aa302d277855003c4af7b22d1c020864e7798eee0034f07ff1184867
Date: Tue, 22 Oct 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729584353
