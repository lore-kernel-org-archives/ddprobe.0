Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72CF710795
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 19:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717357523; cv=none; b=aWXVkL7Z0JF6UR13sY/sbWX5iItaOPuqc3SWqwq3IhqMYnpcrdBn/lfIYvEOB+Hx8vIdAXDt1jRX7WfhGtTSnVuUBkSV97+1m/FsEyzxoKgD799KVvTF9c2AinQXgfTwiBV6XcA9kmFzBqOPn0/NI3VzbQHk3rGdjYV9y9tPeRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717357523; c=relaxed/simple;
	bh=kBJ/11PFIQuPr9q6jxFj4URVzs7GIBSJGvGNDW1c4FU=;
	h=To:Subject:From:Message-Id:Date; b=PhRd2tpOwsGWR01CuqX0rzd/hSa7Drv0VAa6I1eTYJwjlXUNxQ9I+EsvWkGIXsq64NJRyoiVp6f3oEiJckr3dieGvGvqxCfI+xiLoDeH601qAbk8iiLJIYDvb4YiOoOgBZ2j4nVxjTFdC/xjnXkbeZ9NLz1C5emKPWAS8K2pkts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuTQWgeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuTQWgeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE82BC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 19:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717357522;
	bh=kBJ/11PFIQuPr9q6jxFj4URVzs7GIBSJGvGNDW1c4FU=;
	h=To:Subject:From:Date:From;
	b=PuTQWgeEArnYiQXShL/rpvFrYLKvvwUeoJeWhxXNZVSsXO/l7/EyNmN3910VaSgnn
	 jJ1Ykzdk1+xcuo1jtPoXXuaLLhWiHhvcgl5UGl2lgLh+MySNoebwqF0gKLIIq9TbNA
	 knQ0PEvLk8/5Wt18NubZUTaPUEGhjilGAcHT0OMjTuZTlK92+GqN1W3MzCB5/yrOMm
	 6SFZp2cO/bY11GE2X2wWweZPWNElplbF5NdhtYydfHVmPpOImg56WBR8nGwCEV+Emi
	 fxFiacKpJnpzKITo8eDnJN8FkClZ3pZqzOJFxQyP+QwGTrSli6rYUswwtybwIMGHXt
	 14MgI5BQNw3NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7AA3C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 19:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171735752277.31451.3151500023993595992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3dfaa68bf9255ea848c4273f99622de926750230f5511b7c894e29d961010b7
Date: Sun, 02 Jun 2024 19:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717357522
