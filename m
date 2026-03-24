Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643403B7771
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 06:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774332294; cv=none; b=TRzhFJmy3oLwgSksiC1MgT9mN5TfiA8mnOvNfMAjZP+X/BYvCPvkJwiz2IORoQe5tuh3rC6rp/4tRxtJ0K7ZhsO1jvctke/6IgwTffYWzpFyXr9N7lK6aYYB+Y+j0lxVvYDWgvHzt86+6220RacJK+PJ7nBtCzLqcTp+9Y9aWmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774332294; c=relaxed/simple;
	bh=bX6FZza/8iTOA2tz4aLFfXKN30W4v1CECxe84LVYC+k=;
	h=To:Subject:From:Message-Id:Date; b=QHZFBdMacoChidYmVhW5W5ktW0TXVMONKFiD/CrUshSFiLlq+c6KR5H4XwD7KbfQZ5uYJVvkrqE4cQsuH9rOS9lQR3hlOctdRPHzJlY60eVa9bIOvZNcif8eD7Ng6ktDbONkrms3IVCttzimGC2ILibtrrMGo8NULvNYK7KUQlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRZ8VRKd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRZ8VRKd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77B3C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774332293;
	bh=bX6FZza/8iTOA2tz4aLFfXKN30W4v1CECxe84LVYC+k=;
	h=To:Subject:From:Date:From;
	b=PRZ8VRKdVZUqr1Tik0q+1mrVyj0DtTCpekbvoQnpYbcQTT/EsCvKV6/0597z3bB36
	 +Q1iho1Sb153VvqofdPWAvEQjY7y+/twws1q80wIKcGfcVRfFolcUcDjqESnpc4Buj
	 Hi3FPO94BPKP1Fvd9/ylLkth5q+frdRdluX0uEJnDt7lBsZ0d/a49A+4YZcf2GV+Pa
	 5f1cek9JLoQ0EW49lOfG2L4kJZYlsplp40Cxw8oA4QZz9pzWhhHZnMzWNx2IWhBdgC
	 smWwV7ejW+J8ThiPNm/X0G1ACBVdlTWa11BB57D9A+u5DjW1hDLxt0IT0ZB9/V9/be
	 ZRA5WiDNmik4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956DEF532DD
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177433229360.4830.17576741656690972857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90ed5bd448663861333c19eb2623371f5fe34e774a4226e6c7ec5b6adbb2d0d
Date: Tue, 24 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774332293
