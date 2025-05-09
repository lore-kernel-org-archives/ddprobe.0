Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCBC22FDFF
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746758994; cv=none; b=XZM79Ba3lbwdGURJnpqqrhHm8H7u3/8qDXFz2v0CLVdw8g+iJxaX5K07jjIDn1QLYsMjTGEd0ktR8+IhCVU9vmVjZzgRrpSe0BEdK8/u/bdilzeetSAbENWKOlcNCn7wo+daqxB8muvyxgwNyxsEpuh+qQcwmHHv3/6bl4Oo/QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746758994; c=relaxed/simple;
	bh=rNm0zgLV5MZt/+UNZtDlscE9G9SWFGntVdImhQ9/xIQ=;
	h=To:Subject:From:Message-Id:Date; b=dFKoKZgjlYxA/TzaxWhbotOZ2Xbq5Pm6kI5CgfIfQ4z6RCwq2sorZZ9Mo/FwkrU8VbQ2M1Ll9f+ZD/zHn3TJJeRJgbNtcan5w91A0SoVjS0d/Ap7ipQPqHhK1mbTQMMFMx3SJC3UMN8HXpDsMaGalJ+jl9Raspz9Bo/fz3yV1Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hY4r5PYr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hY4r5PYr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A683AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746758993;
	bh=rNm0zgLV5MZt/+UNZtDlscE9G9SWFGntVdImhQ9/xIQ=;
	h=To:Subject:From:Date:From;
	b=hY4r5PYro7JhKm3gKBecV0dOppoAe7RWfDsWHWumhXVzYHZP766lPmvAP6LMJRBgr
	 dqPuZtc9hna1JtqkBwoySCL0Q8RBZIYlvf3IpNml62+QpgDACzVDSIf8CUrOGPpnvX
	 seienp9OHGwFoH8Lsn99YsYzvqCUP97Il7aN0IOBON2Ivj6JmFeVWrvoyCn9e7rJXS
	 voI8NtA6GKfG9d6xIsRY8l4+SgKLkgd/M4iRZzD9xq83Zd/eOM4Wh9A4HTKn0J5Z8y
	 zrPllw9AbKms46Nj/VnedROmd/sVCbtsbs+eya16mxOtOMM1ptB6Xi+XZ+W4+1pCUx
	 u/xZazxNKzy1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9150FC3ABC5
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174675899357.31369.17888532151669882266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3cc7c84a333cc7bda514b8c2879d93d46612f712a8ad6371ebac352b09837cd
Date: Fri, 09 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746758993
