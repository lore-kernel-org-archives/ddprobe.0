Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D7217A2E8
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786836034; cv=none; b=aIJoSS74xZLx+RQpFXu2npAUnzYyVwlcTAHWhRW17F11/o/fss45yMaoS64OecPJwi8wZyFLDoEHLg2xFaKAHFNvje+mkNz5NAr7YcvstIdWVllMSUn9Q8Y0JEcLfIkU+LzoYKcH2Za+Ii5KmwFaeXkKVodokM08EGENGIIPf+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786836034; c=relaxed/simple;
	bh=xFuWwasHITuEWXKZzzJ7GjU5fNyUQWFfwMxE1jZKQdA=;
	h=To:Subject:From:Message-Id:Date; b=HnQomAjmXSCQF7O1sbsmIE9G5JACuXoTxc4CCowRT0Hd7gCeKxdQX7os/h0UcD0DCWgdwjn29SM75OqLC4yBi+QrgwpOExsrRMPGQRCxgGoUzn0vjAFCX4DZHwyUlCkCCEV6tUhKR1GJkA6zErcMI6ICyL1muylKaLeMqBPwkvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYHISz8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYHISz8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D602CC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786836033;
	bh=xFuWwasHITuEWXKZzzJ7GjU5fNyUQWFfwMxE1jZKQdA=;
	h=To:Subject:From:Date:From;
	b=uYHISz8iTMRPMtd78Tkb5jgHVfYqaQ2JMzX286Z8KVNPdznUW1zXVWTYLARVMwpSi
	 KF+aB4Qe30Ch3Rt7TszRWjkgCm03Bq77wHtfSkLcCW6Iw9fFmNa97kgs1WY70u1P9M
	 MgczAO3AQmXeBdWB1BUIWQ3XrhNyagZ9hkJj8Cxpyl4FZlxfwtsKGdDKXwSfYHabSG
	 MN2S6Wp8GhRPIhLFQP3ROgkYHA5jHAmIes0F660RIhib1GhFNJhRloTbXy7f0C2KI+
	 vSfmMV7wahLIJwIb5auhgfiZ8O7sMTEh4zigOTFLFUICclW9oPBusmTFM8DQOmFeOA
	 SoBm5ObEUn4YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2F8C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178683603369.25251.12426891608228933197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d0058fa0e31d69ae504260cd7675758b60651193618c89c598a2f3633d975ea
Date: Sat, 15 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786836033
