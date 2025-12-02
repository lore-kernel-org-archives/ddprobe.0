Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF843043C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764682374; cv=none; b=B+i9BVLxLVtVOMPnEpvmXZ31AGZzf+/1x1BpOCov9l37j/Fty3JjQH0gCisWM0S028FvGlTiIdluYrKiZI43RRwgZirU4uul/hos1TmNtAdaTBWdKMggo7TNFt3GhLexLJ3wqVvKsIKDkAEWinOly+dqC1q41nwQJmzja83Bpvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764682374; c=relaxed/simple;
	bh=ZX9ZIw4Q74zRLoJhl27cwyoEiDKwIf47+M6E2WrPUk8=;
	h=To:Subject:From:Message-Id:Date; b=afl+QMLupcZitsMKn7/mb/sWOLTjewu4bBu6ul1KfRF5WvnT0byKtNUPyLGzzYKoA0j/dlZ6bwjXeHHKx0oz3HVp15+h+XfDfD9fbxzzs0fwcJowkFLfEHr0ZK1I8senogb92PDYBF4t6HxkOD7JiKNLkbVyPyEgL4XqBhbhqVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ah3q79xW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ah3q79xW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3110C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764682373;
	bh=ZX9ZIw4Q74zRLoJhl27cwyoEiDKwIf47+M6E2WrPUk8=;
	h=To:Subject:From:Date:From;
	b=Ah3q79xW7zx5cMvYwkll4YaB2bYlu2Pv5Z+ikhpfHEL8DXoVKdkK6v98bQLTLt+Bg
	 aTFtXnGqbDY/qwaypFcqfhKPkruxQAotjYzocMkjZYZWDj5F6ntc+YkpHRC6VwGm7c
	 I5Rn6lAiSN/MnVJo0lpCp0l6dKDMRdqMaqvYrtFVp4x8DFOboDLu6POIbWiaTfCqUo
	 kz2sRATlD4TgOkTupsqAWslco4n5ho6K7MITpAHYHbJd4YEvRzCHKXbzwggKzFDyND
	 55dQYZf/fjavi6GN5YJwH9hkLBwPxwEhHIGAxfZyBdoKgkRmL9KtAx9akG6jlz9xxI
	 6rb/Yv+v1+/lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AE5CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 13:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176468237358.9189.4675524321234393502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1c619c6eb89dd9c1547194dfd4a886488dff497e6fffebca615e13369345cd1
Date: Tue, 02 Dec 2025 13:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764682373
