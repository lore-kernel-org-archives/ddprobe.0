Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1E02C87A
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 05:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717999043; cv=none; b=resJ3WD9K8EnQNVw1bWh4j+xlrRGIUEisBYb8D8jpx4aVdGNxTiedIuoRYlqCEdNHvWPmNWZzVnauMY/jUTy2xvYoAnzBAUKORdE9HpNLU4QCrrw2Gc5kfMN/QxC7r2LBE8ZGpQVbZSgPZgZBMhgRh2qMp9+BdZ391M7cX7t4ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717999043; c=relaxed/simple;
	bh=+j4SutqHD92XI1kxCGJCjqbgMCqmE5dUWR1P3W+1KDw=;
	h=To:Subject:From:Message-Id:Date; b=DrtSnQcQoJg4UawSApvdoIjJ1kUEdWBdUNN3Xl88UGcAdGJfJ79izTnr74v9XJqKf5mk5nxJb6FveA7cRDVWVfQ/2/YRU9ZLWIt9oEIKxioibbZCc2Gtv4RwAlRL34D7ZwW2MIX6PcLRPgm4ttwYhS6HaW/BimnvF/wpIU2jb+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOtzRfLv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOtzRfLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D09C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 05:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717999042;
	bh=+j4SutqHD92XI1kxCGJCjqbgMCqmE5dUWR1P3W+1KDw=;
	h=To:Subject:From:Date:From;
	b=QOtzRfLv1iUxGMYt6P5i5WSu70ZP/UIVHF+py0ZSag5Cz6CphTFaHAiFVPL96oTZa
	 SOTSI/KjKukNc8DAjcr8NreiCcOmIrqiim1rBD7tiNTWb2sdbCMFPauGv2iDrVDCip
	 MCre0VtvU+1Pe1dUX1Zat7tJceYXKjsE44Fy2rZ2WG7k26HQuWAPrwrn7a7/GH1AyN
	 o5BmSQ3RzNzrhfOlrC5bgqB2BmSpv8Ln0EqpiQRtzGZyIIPzjX0rTY9FAZNO3BSHTE
	 QRRSr+R1nxt13VD1YBrAjkGyPMGi+SFNQXfUiEkDc9/OGc+W+nhLsIkk6W9OeIb5tb
	 EN3PYHB9BuDQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB36C27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 05:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171799904276.17915.11724314849409806421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a69951561ce00a0ccd973d009bcb43ceef6d4bafa0625700940be9a27cd831d
Date: Mon, 10 Jun 2024 05:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717999042
