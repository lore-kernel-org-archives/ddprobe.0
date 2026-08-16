Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63BD73939A6
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786923634; cv=none; b=DjB63uQDNl4BpBx33ePq7JKXl4pX+1OUn9GS/ja285Q5cwnuXHSTw/dRCRhYMjWCMY2E1WbKnNozWaa6gN9JI6L5YZpexWfU/L6JhEaAqTU64D8um14q3x5n2kGkW/AGmYKS6TpKTuJYF5vEf6oZu2gro1Wsqf/shaUrewGf+1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786923634; c=relaxed/simple;
	bh=27uHJgmZMiuZ1QHkBn+YuC9zg9Kd+Wl6gw/R5yEZfeg=;
	h=To:Subject:From:Message-Id:Date; b=KM1O2yFzA2GWBSeGbhF4L/bBE9QxOAki9tuL+J9VyMoO3J8DpZjyc+plQ92KwGPq+isjRCF52oUuv29HWSv5EhSvLjFp3Gg3vLJC3Dw+MjSFTjGA7bFmxmHUNmAi5kK+4Y0VOu2i+LESScTBlZY8cQZSDsumhROau/NR8dB/koU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQS7il5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQS7il5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA617C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786923633;
	bh=27uHJgmZMiuZ1QHkBn+YuC9zg9Kd+Wl6gw/R5yEZfeg=;
	h=To:Subject:From:Date:From;
	b=qQS7il5AXKNtvvoIQMm8Ew4iOliM04jyiD5j/QbUWLcyC+5zjBi3jc1SchFPeETiI
	 fnedfzmwIATKvBTkhUDWCGKMovdhc/ajk4T+PA/FQ7P6285JbtSfKQTBLFjKhcuoW6
	 f5kp6jQ6n5T8YjTAjFw/+ZigBYvZBVk+C/ed84igjoh6AvK1sPW2xRa8UC+R/wdnwx
	 QAQaL0/C6FTXoPjZAFz4pku9e97Z3Og3zMtr24m8q0eI+k/N1Ra88mmm9lWwMngxSh
	 pFtsluK3MowupUlYr3T23ItOs5SIodn+o0TXD53bauFSlm4/WZQQQZ6HTKRZ6S2zVy
	 nuMuyjEhjvqbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF1FC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178692363368.8926.12670352082015838226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d53dba3dda7c7503a448eda3a38b54bbc0e8f2aab9636e157cb44327c4f3c37d
Date: Sun, 16 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786923633
