Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65FAD3B8954
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 18:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776449254; cv=none; b=grHWt7YHTHG2+GuUlP3rpEtOClbT1aw0mxYLvRZMU+ZDHRtAzNnzPIGN1PUSGK7im47qwHsyaMNDbZKdmnf57hrVGld7j8EUbzsdojCUPHt7DT7jzixnc6EmLFye5Kvyv/UqFSsuwb+rgkVqMHBDwo5DQ4uokQU6+/amHJvvKUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776449254; c=relaxed/simple;
	bh=OuLvRFAlsLJRfSZTFy+Jn7/xor0OBDjriF1B/LmC5zs=;
	h=To:Subject:From:Message-Id:Date; b=Tn2YhWhf+kl4ElCFoHaZ7loPW3QK00NT0rIMCkjE2ohFoMpbLvNxSQljzCjqNo09nA9y22epgF9d/SdbKRutytsDG08nnZ2+6vRIJ5AlctvTtL/aW4/3ET3stvLvwWzOjPYIBtoHqIONkmJZ0eW4w/5c1971PRgspJt2SmcqgAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGAU1efK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGAU1efK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D06C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776449253;
	bh=OuLvRFAlsLJRfSZTFy+Jn7/xor0OBDjriF1B/LmC5zs=;
	h=To:Subject:From:Date:From;
	b=RGAU1efKPJFP3YYYolg44aKBGgG7d/GY/lmNJ7yYDHGVVWWMGHOJVvMN1Nm1NBlnr
	 ze7gOs3zx7bRO/RQ+jJ2uFtZSFuBffvW40vCchhhX7vwa/mbq11VwPuFqq0BGn+R1k
	 BnIfc4MSJegnbXHzwPDilyHX4mMv+JfsOXDKQn1N4/+CAPEbA3AsbhkKJQb11lKs3j
	 zYGHGiWRUjvdY9HFrqsUBnVM1VyhFV2mQNAA3eiLDb27DuEEc7rzin2A5k4Rd2kodq
	 33ptu1oxvr5Eg92Ixby+6Bi4ZezhTeUcZM3Bf0HgkGYi1qBcY1xMuVYXCQJWGtlvKJ
	 pklNCQgCsp+SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBCBF436BF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177644925368.6130.3496372493849121534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f95235b537a14d0c1ced7d558d5af6541b24abdb9e5a3c608144da5bde957878
Date: Fri, 17 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776449253
