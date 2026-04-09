Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBD52C08D4
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775760454; cv=none; b=mTK8X4pd79oYOcD14ZrPmo7AOe/Kr/dzhL/zyM3lRKaEy7X+aoDyC9JwDSTgEF+yQCxC3BfPyLzzd5X/svuQRBHgn0u+Xt1mYqBqxyGpq9n4y68TKKWHt+PdlcawgefvjBCvy0+i77qglroxJdm/rblTYl3ZKfwwZSbfrUWaiwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775760454; c=relaxed/simple;
	bh=PlTuNTAgVahzBFkd9P/NM3LibElz3VNWtXvRPhB4YyQ=;
	h=To:Subject:From:Message-Id:Date; b=LpniSW4I0pj1Hflh1LAHTrp/+nNhC8liHNgTUhW8h5aEt9f20kW9yVt5PdXRNd7BAF3bzhrB5ymtNT6LPrf+EO6crQhEZOTgx17eLllGwmZvz4BMqAn/coLdNCJH1cNHglflKkInNv1udiExtFtSd/iHgZ/GA/F/BDVT8S8gWWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoNJWVk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoNJWVk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5D6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775760453;
	bh=PlTuNTAgVahzBFkd9P/NM3LibElz3VNWtXvRPhB4YyQ=;
	h=To:Subject:From:Date:From;
	b=AoNJWVk/cc5TluooSbDBEHNbyJulXLIB16qmKxbhfWHYG0tSOPS1F2a61WYyjzrYZ
	 MzCQ79amOuHhngW4cABe3jRYx53Sy1XGrR1MkWU2CbdocqHJci0iqxIyuKi6Du6e+L
	 uu7EJzCmrvJq3igN1s7aWmC5bZqXO5gK9OA0pvO2caD7gM8bqI8rLhsA79hCqgLTXM
	 aZDMhQLulhZfFNN60EwY+6ho7NvMiVafZYy6errVlXvRwfkN6MCJu3L6rHGlssM8pj
	 tU8RIcc/FRbHFBhZc6FmZBsKZnZ7Hht+QF9XifFl2meXsDWwlhbUJoWooYcTPjeRIE
	 z7RzbU+uJZScw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB61F364AD
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177576045369.10562.9885926062350030775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6667dac3703aaa43c23518a8e9ce53170a3166ed973ec0b888a503de6abe6de
Date: Thu, 09 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775760453
