Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526E8233722
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 20:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781988994; cv=none; b=j9Uf6mf5uFSPD323/UX0ME4zI6zzFB++rmd3ZWloL5FHND3jcO+Vtmqk0IsVs4QHDn8T62ltWV2i5XmGNxWgcEYHJJrRnJGiLQL/EjFesL2Jj5sonIkxG0PqB++LRx+MUbLBKO9UsQIkZm6zecuhXJF1Tvt6odj7euC0A7H/UNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781988994; c=relaxed/simple;
	bh=m9+m1nB69FVBQZIfG6+zWn0kuHQn7QboyeyDhqO/csI=;
	h=To:Subject:From:Message-Id:Date; b=n2X6FCG/esbGqK1DNZM949B6XQouH7HqBlpI1w206jWx9oaG6X+gN8NhT9lkRuNne4oUTd5rrUiC5xkAtK4tutQKS4kwv2ceJeJyTjtzwGD4jWgyQGi4stNCkrWMsXMiscQVR+Pb96F5a8P/sePvji/0c1lwjuRbGm8FYEGz25c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZ/hM0n6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZ/hM0n6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C10C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 20:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781988993;
	bh=m9+m1nB69FVBQZIfG6+zWn0kuHQn7QboyeyDhqO/csI=;
	h=To:Subject:From:Date:From;
	b=RZ/hM0n6jLq3kPBNH6ghYVwQcOS+wMYs4f9mAF5rV++yG1DBfsNT/U2eWPrEUWAMo
	 43Vr577tj+R9FwAP5iqB0Jb1aVl1+pdU2qGEcJJH1fizYbbPwO/NUkx+xzUzID8Jdp
	 xUkCWCs0F6R/8QxWpC93SfD+sik23Z9pb3GQzfd39i2M+zMzofm3DWIGtCu1r567Al
	 GNjW+BdhoJVy4vUDxujKxzVphNWAu8UVe4s1qRR/ugbHEc4wKzl1+X/UVkTxUI1I7p
	 gp0VfNhzZLT2kfusuf6I83sCTceLYMbPAD9cE8VCHvpXperpmW1+KmZLweAX+pvP8M
	 N/mNa93dAuU0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8662CD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 20:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178198899372.30908.13990894615160380555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5f50dbdb6ebd6db51822f30989c8e94bf2658b5a3c69bb7e7546e039acf4576
Date: Sat, 20 Jun 2026 20:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781988993
