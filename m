Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FA81B412A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748862594; cv=none; b=R9ImdXMC1n5m4Lc0lgPayHY4RC0Y85p3Pt5Gvx2fDbCOabzA0UId+TMw8cJq9P6yQV9a2Rn6sRjSxF2onir2f7WXE7SdmZAHVXhrck4on4sbMrLb5tNPTB4J2qOgBZMd5/Plvd2JPtQlzsfqwoljtBsW/opkIMXldR54XHnIp1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748862594; c=relaxed/simple;
	bh=juNfn4Rf9HgnVgqZwArLPKRWqcVojnZ9e/kFl+vI7tM=;
	h=To:Subject:From:Message-Id:Date; b=Te3TRJ0+ByqtRwavvJNaIfhdn7/fNNjWgzCFy6LDdv4kI6UID3f+/sOSBC1lxjUUP6iUGydJAE0O3N29M5kOH/jJScnYxyYcp3D+H7O6Hs789A2ouCmBbw41B0nWjXqzajZXHFPnDf9oW1ASqrZ0LV7UkygshOAya9d4I/CN2gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhQVfIP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhQVfIP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41E7C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748862593;
	bh=juNfn4Rf9HgnVgqZwArLPKRWqcVojnZ9e/kFl+vI7tM=;
	h=To:Subject:From:Date:From;
	b=dhQVfIP+6GcR0H6MIm+gklYJ+KL/0dQzQqgqLwWAsRbe2E3UOpXDOEO5yMZ4JDgQP
	 8ZhBa7Tu+kda555keHeaKpcSiYX1kW7x/ANCqpV6ZZVwHJit34gJHPRd0n86/4YyVm
	 hflmBepKplhHXLR//kfRVZj3NMsH1QxF0FdyXihgrg4YzxBHFO/pRVY8TeeGyV+TSs
	 b3CcuUBFQLk9QnmIvqcoQdYbG+d67z3PwCiYkuA+DFB/mkkf6YFET7gLaYZKNW/+ny
	 BjRq+WDbtmJzlOJSTJ68cbNafDHRoB5uq+kANzFnJbstYP95nHu9AOnF5PBBXRBS3Q
	 3SUVgob3v5ecg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8F1C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174886259358.27582.6033816407654093723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8da4f782fdd2963c7921c0d5c4a3a8b34a9998b6ab341b34d67b0b0d3f9096f0
Date: Mon, 02 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748862593
