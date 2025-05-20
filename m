Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2871A3A80
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747751394; cv=none; b=hXHMUG+Luhdgpzj6BJpiZAxJJZnrGVhwCg4Te3h+EisZKBg/dvuV7Oji+L/1D7JJyxjYNO3YJ6CffenpfaB0AsxELCr6aKkOwI4/NSrBhA7nzIqLNRDmrQQsG1vPSvNFEhGsuwFp4C7hRBQqEXWHc2Z6TmnQL4U7n0fj31yDD3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747751394; c=relaxed/simple;
	bh=GFYhLKIVu6czJXG5khIks15Ia8S18w8L1BkdCTC+hfs=;
	h=To:Subject:From:Message-Id:Date; b=ujq4ndGkiB7HORXJqWMH9jaws7gDsCW0n9owtbYiD3pMWHO7Rj2EY302R4+DYTwwO75c23BX2OmndgroW575K8cseiQBD8NctsiaquylCIVkNn5GiXLYvjaMjjnc5V1miZs71tvnbZ+rPYJb+9CiOmOC/mD5NqXtQe13aG4lQtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Alf7Z6Zl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Alf7Z6Zl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E414C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747751393;
	bh=GFYhLKIVu6czJXG5khIks15Ia8S18w8L1BkdCTC+hfs=;
	h=To:Subject:From:Date:From;
	b=Alf7Z6ZlhJkHSuWCa4iDArxA5zCeXsYGMorRpe1B4QTb4qt/Rc3WG3bY9HMa5hIcW
	 9F7CP/NKmQeZOkb13YY2jzhojYkRbSNzF5cQJaLIDme1HGySCMQWOGxubnQgA+pyI6
	 niF6I3DyGbdCNHk7k2gEnH6fSt8GOInfZYop5u9yGFs0iKK8gFm0OAhFyy4Y76R9cS
	 HRMyEOlFzUGO5JlRTqNLJHw7WsbENaR957zFBeGZvsQbJJoN5CMYCupW1setmS47MI
	 X8VReqA5+U8kpMa9G4tKbKjqsvI+TE/Jeil6UAARU5EnpHC7HGdoRjWAFhQSdLvKtg
	 dyE0h7ZkJmcQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E94FC3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174775139357.31051.16709632626718161081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6269c4238f644ee6fa037a3b871678439e291edcad50dd4508163e70cab04720
Date: Tue, 20 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747751393
