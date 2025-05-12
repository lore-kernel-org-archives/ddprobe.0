Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9EC2581
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747022994; cv=none; b=htDt8JZ9Gz67vn1XHp7dUbbWfZZ2f5ita02oZWpmWgfsG/G/Yzn8hPBhN0xOUA6NEibibWCaYMAbmpWjmxGN1yKX99iLjgELrYa8UCCa1FU/AZgP0r2w6ehxT4PdwcPjMlO8xkbPRe/3JqO40vOepGKV/YVc3DFCE4gwedeotc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747022994; c=relaxed/simple;
	bh=l0mgFnHRllOS1xQ/7CmB9A9gc0pJL8/pc/nf9rMx+I4=;
	h=To:Subject:From:Message-Id:Date; b=S6RhXd6q0GnkTrYNOrwuyg4O4Eol49QWj0uwFQw69KOIq3lEk3weqylp3Gkxs8CikNHO7GBqkhlH2tBkhl/g+w7rdGB3VICJGd9tFr2KhM52QU6JgqRWB7LMMN/HsGDUHpVL8xF64XVu6U4KhtkghQAwG8lgyGYr2BwBGqJbjq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oe2PhXk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oe2PhXk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D2EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747022993;
	bh=l0mgFnHRllOS1xQ/7CmB9A9gc0pJL8/pc/nf9rMx+I4=;
	h=To:Subject:From:Date:From;
	b=Oe2PhXk0v38BskRFZCPzV/j2va1qcY7DKjtL7SzQ85zBLdAueS8dMQNEOlrXh96Qe
	 OAaU63jfeoHZfsymw5/OZnfSrdMUpCOYjKYu8afjN577XXGfC7ZjQAZ/0++armbqV/
	 2bOVn6cS29XHMCbOb2BvmDH41bsPXTQJMPKYEkPVGxMN6JDXLJ1E4VWWlt2irEboKT
	 mn5zKCTuwVD8Jg+dVVrcJWpN8/JkgfTm0qBJe546En2lCzrYkmSJGvuWsubyE+FjZK
	 7HpO3aQUHndNQMBbzHSLT9dxEOAC5cMFCTnZrsGmesQcJGNUzRmWItqSmHGytBShpw
	 YSy4hMEMY4QQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947C7C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174702299357.22787.18168388265283691326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6810aade58fa86b782a7e7cdfb6bffe3ffd9c7a884e8ec8957f2184643c79b04
Date: Mon, 12 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747022993
