Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6553F39C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 14:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781534794; cv=none; b=W4W10Y/wxdTPDpnHQPlK00icB1ffZaHIWW45Pib79i15mApVxEwJdePoBd5zozmZT2F3KMs2PoVuVGsdJxBlDzUoKtL4rPOfjDYMKU4gpHhyQAFm52F3Qch/l4kVWR71YjG3SikqcOkwKP1shntX78lhcCq+lYQXFGwaBmRr8yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781534794; c=relaxed/simple;
	bh=3OVycoDk/UkLtV6zy1O6v5N3jnVHxRL0jreqaDKDkRI=;
	h=To:Subject:From:Message-Id:Date; b=suHzGR3bf//K5ZAAEZzlGf7P2GUxpWJifmBXAgvhS1cGvi41fmHG59txOJmNtQsJUy73jtta4+uCpG4c7KKVhkLkh389YLZFJo8ZOT3QcCbhoVL5OxhrBaKUzbfxX18KyoknytSvKrN2vIFlcVJeC1Ukk5Bmbfhr5RtBT9MxRjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ds4pThbB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ds4pThbB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB1F3C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 14:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781534793;
	bh=3OVycoDk/UkLtV6zy1O6v5N3jnVHxRL0jreqaDKDkRI=;
	h=To:Subject:From:Date:From;
	b=Ds4pThbBiEiM/o0szpTqu6wIz4d9Z19PSq7LyBj2xD+CgX/Gp+Q0rcPfAWtHjNKvK
	 uhAecbSaJNIPCGNMf4H9z4m9/KZtQFgC4pF+gYQ/Bb47QMxuOzgE8F2hV8o0Bnf28F
	 rAleZPFdkbB+7rw/LTqe/h0ckWK79pxHn3Gc1XtDHY+ukIeaqGGEzztQps+5PqAEbK
	 njSyY389ru/vv4DrWQ1yibI7E7Iauf4/W/4m+vo6Jj00VshwxEY6F0qiyfP3tXNzNh
	 FZRNyUfONPKiPMED71vAz8s7r0SrgXgkUkYm3V3JBATKWqE60Ie08L8XmSSucGp09E
	 pjyeQ/8lkynOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6AE2CD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 14:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178153479373.24601.12469048383349014359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ec2419109977cded11df0b250a20339affb6e154428d0f2e3d6752a84774a3
Date: Mon, 15 Jun 2026 14:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781534793
