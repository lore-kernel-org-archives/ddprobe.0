Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 919742EACEF
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 05:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776834454; cv=none; b=r7nQVX6pNUgH9kFF/gfn6TPazLwVTxTDt83kqAAAyZCGOmrQDi1OU/HEJhCeYE0WTBEmsPmnH9knLNjKFbN0PwdnPiuVzSV5ByJsml8B6Z+lKv4aX2My9G0tQKMO/+knx0DzIv+v0FaW22dokCLTRQ4fR2WlA553U6PhxkIHbbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776834454; c=relaxed/simple;
	bh=aTNQ85B5iSzTiIFyrQFPOjyq0jO+XhJKC4GeZiJO3Pk=;
	h=To:Subject:From:Message-Id:Date; b=AzMETG4rUQSxVTGxqyUZSIqfbhuS1xRwYUJsuj8F3pd1mR4PomdGilG6lnVK37CRepJdmS8B0LWW3e+sC7s93qn59Lb5SEDd46ua4jmWyl59RIAolGWwKlRwDBMjaeQ1o97DTcnnBEfj4Z5ajM3SbA/IfCdWZhJ4/fS9wjwrZxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBFZsWD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBFZsWD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB268C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776834453;
	bh=aTNQ85B5iSzTiIFyrQFPOjyq0jO+XhJKC4GeZiJO3Pk=;
	h=To:Subject:From:Date:From;
	b=LBFZsWD+Dbi5UoF9fxTX5Q9XBbG4id/nx0KypfyyKf3cnAhxxKa9JGR6FNr7bCyeE
	 92sxjI8i/HLurKJ2ncy49eGYh+BfMp9EIWb+Ecb50C0v9XmpGd7B6C7+CFQheUxlFi
	 /PsMlHPxq3WY51K4f8wvNclujQ8vNjoZNzlV9J63r+n15LY3tMbr2flABbu1WYrJtV
	 omd+TMcgZAEf5EE4BPcivFVouK33lU88MaE4SU1BF3HXHQHP4geXNhsXs7kxYtaD6l
	 +doRrjIQy/9StxATqvQ6TlHpp6fkhSetoTMweiqg3PlfnXdtEjh5BM0uBArh/ZqLq7
	 TYYkiZzmWu8nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9083F94CC1
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177683445368.9645.13585722810713310525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48eb70bab1bdd3ceadc1e389ede65e016f6a7fa59e7aabeafc23aaa63fbce6e0
Date: Wed, 22 Apr 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776834453
