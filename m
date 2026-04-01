Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29ACD32C316
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775013294; cv=none; b=uLtpXzX1WTEhZ/GLY8aCZdC3rTVdq6tRt0ek/EjO197UfZfPZfuwEJvTujlAg6ljBRgwvjr5l98i/mQkkfhEkrRjV25c2TFztPOVuW+OmomKy1ETH0UEQttYYDl+lZ/LyT5BoIXlPjdH9e5sd5O3tMlc0S39Rq/erY2t8rwDqao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775013294; c=relaxed/simple;
	bh=S2ltCp/JOZWm2vpUQfkb1wfigyBC5PcSB8JJfm/fdhA=;
	h=To:Subject:From:Message-Id:Date; b=sN6kWK4Y7PYEJ79cNKtDXvfyu+kvPmglfHM19v/Ash/gitywc9cHJFT1v6GW1U4ME2XAS5oEczY4Vop4kl0p3i5zk7dplOq3maVno0FKPJHFiBatNt18iRmMEqjue+9OPC/U78PagmHph7IUkMIHFEX0qPeaCuCeYvjFTAUqgxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrwafbFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrwafbFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F53C19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775013293;
	bh=S2ltCp/JOZWm2vpUQfkb1wfigyBC5PcSB8JJfm/fdhA=;
	h=To:Subject:From:Date:From;
	b=QrwafbFrTjyf2UIz/6ghpZBIxrD0J1TbjsWr4EgxUKc0YsgPMYh/Utov6C3luo3dm
	 qN6hQtWIn5CF5wdHOB7WYo7z1wIM7AatLgdcb2NH2zQNxCn+RZdhWumregHqI8hL50
	 QI/Y87KYr/KWEv/0R0wfD7JkE/3VUvPc4/0W7cyMXGatufe8YdGr8nTyLF+Dna2mBx
	 41FsB7pzx8yKo45Ca57ODotm6k2LCxtIR41e9fSEd80yFHmBNB5XtguiG8Ec2HtU45
	 KA39Xc9j4VefmEBp6RnxM8/6YYGgphngjrqawVHHxb11w+VJTM+D6RdOE/lJc7rFWh
	 pQKFp+FaqT1Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AE810F931D
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177501329359.29375.10216357499629456084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a732c168837f033e719ebe802a392b66295abbc7cd91bcef2df70ef1994d07
Date: Wed, 01 Apr 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775013293
