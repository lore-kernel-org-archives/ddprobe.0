Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234EA249EB
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774826094; cv=none; b=cLggM8q3HcdWNCm6COU5ABpPsLvb9yvsH1v7kv3HnA31Hv5RziDyybrzSiBCd572e2hPdFysvSbz2wxC/tbJkbsW9GDQYwGdDVswPlkfxsIGexwZpvOYEkq1XCV94z6iLvIlXUZgdHA7IiSH/fDYSG6ci96fVhzROHqgxQ2xhBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774826094; c=relaxed/simple;
	bh=x9EKUOF7QH8wBIqfk/c9D9OADytxI9/qnsda5QMGsZM=;
	h=To:Subject:From:Message-Id:Date; b=B6T6r5sugJC0PzCeUuG/hgeWqzP/Wn1mtFlgH6PjCR3x7qLN4ZuBzwkOdJxCCy/W8iDSYaB/qrsS6qVepbK5XElNeRVtY+G5C9P83YZBuQBwc8fJDtifWuLsWsd+nRjIISheRUyZ4OSzLcwAUKng1LzEzKlLsVHmXuIiJ9MCZPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3aURfPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3aURfPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9FCC2BC9E
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774826093;
	bh=x9EKUOF7QH8wBIqfk/c9D9OADytxI9/qnsda5QMGsZM=;
	h=To:Subject:From:Date:From;
	b=M3aURfPbMVO0GhbwPgmfxKY5Y9b4BCbRKNxklR4n/6Nr6PhqYID8WY5u4uBTkIdFK
	 LdZh0HDnZJwsYO7Hg4AxIQu5BNfrRTs0SHIMabIkc84eHveC+7Rw6XaIDrRQo2vJiy
	 i3DzaDATN7LrEodpVJQabzJvTBNf/OqwlGEiVx93RxfnJCdBAwQy4T1ClmU/x/2fF6
	 Pfty7KD46Lpy5vQkqkcRBOwb8JYFsxn8jyTU2TZRM68JS+yYNWWWWhpkUjwLehEYu8
	 rVHVd4NZrEGgqElilG6Zct6w12Of+V6U8//1xEe+mH2QpPnV4YEkLx+ntOlmHuSk4s
	 uwwSTGMc6hBUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99707FF492A
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177482609361.16738.15799944683110230573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 431d0255b09f0bc4d0df1616e6122c94e2725d1f1649ad4e336179f45116b9d0
Date: Sun, 29 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774826093
