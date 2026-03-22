Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7182F1A9F91
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 10:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774175694; cv=none; b=iLp+44BOvQQCYWVqFosbf9oQlZms2jDBnHZjlsyPXNv7C3+e/MpV3w2oDfMXdF7ItSNExsOvWG6SzGYgZzQVe+zIItiCeBHcNna+7lMGgJzgrNYGBwt3rwGFvr3ofhWR+lsSV7xEHgEZ3UonFMvCltdf1EemcWZCJVPvUWUQCxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774175694; c=relaxed/simple;
	bh=VgOA4ZRWtSmo9WZ8K7vEPlqCD94GQ38KiRvfnNOtXS0=;
	h=To:Subject:From:Message-Id:Date; b=DJFOPJPFhB6aClJbWgsbg8y8uQM/Alx6Vf73MJmv6XJaKTToxj4VxwlDKqTEfTvbbcgs4LBGhvxoQcT4PnTwVf+TAc6HdE4TKWIwUwDT5wc7XgxUfsnaSaI3gBWZSi8IdzvYhloVJJaeD4fO/u4kqqmGvu+D5jwU/3M89zXPL24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJ6n1Cua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJ6n1Cua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07B6C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774175693;
	bh=VgOA4ZRWtSmo9WZ8K7vEPlqCD94GQ38KiRvfnNOtXS0=;
	h=To:Subject:From:Date:From;
	b=TJ6n1CuaCvPlSOXPVYeqYmHEcLBCzOctLe/W27u8IEkOyM1aILil+3hLjBb84wy+A
	 CZDE4JJviHhz+J3cD7NnR5bsIYGJ2qj00bdmWg47UGMMi/EV04RyT+NtDF73sTsU0n
	 vprJhUU3ExLU7g2gyCSUzMK43kEbPCq4I/2RSwroRNEq/lLM72XhQfrxWA9wL9g2u4
	 36AzzCtTttZRhcUDBGH4gzvwW4lV7mEfd1KUw20ZWLOfvbhaoVxTefDXTRb+ZBNfi1
	 dpb5S3vlBKKG5vnBYad2Mcy50seqSbQOVrLNQAgudeqLhdYk7+Q886JfNCeItOF3eZ
	 DX0Xg6ZcwEnBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4081FC72BC
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177417569363.16540.917654607222755051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf257b27699766c3207f1a9e6b282e3992451713415d83c3941092cd6aa36b7e
Date: Sun, 22 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774175693
