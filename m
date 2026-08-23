Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 714DE78C9C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787482234; cv=none; b=Pzt/PCRhhFM5gT/Gw4Y4pPWphYkKtIT6iGeIGoTdQkqCe2j+SH3QqkSgQKkYj5sSisJZHWV0EB07knq9KjeLtwpGHgxBJb4og9Wf3aJUmFcRgZ97JC7wEQF7XsUt84zvfaCgkOGwsYvb2P0GdvnHd1KvuakCSy8Sysm190/bbMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787482234; c=relaxed/simple;
	bh=4aDYBeLgS5Fr5gkc1ixFfDMVrwdUt9rWj8W3KaITpPs=;
	h=To:Subject:From:Message-Id:Date; b=Nz1MXizFM7izx7dtaEDS6PNkfT/mQY5mcYY7ezAYfdFDmjJv1jWMAbc2+rxB5iDqLE+i/YinWzWyshd+jXMnBPWOJdyoAuJiKaKMf1GcPVXibHnEIdrYD7dppCnj4ZACvo9xDVuXR+gaGH0hbGvTCZD9ZK8Mr/DDHf3QcvzARo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+2mcppX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+2mcppX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA296C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787482233;
	bh=4aDYBeLgS5Fr5gkc1ixFfDMVrwdUt9rWj8W3KaITpPs=;
	h=To:Subject:From:Date:From;
	b=I+2mcppXNZt24OYaq7q3+vm7l+uK1Qc2j9cFtzj046jZWt35+FxVyOxJ9QAWdlFfK
	 1ecuCZ9wT0XbwiBbG5EEK5sXxLH3fspaAzZvEOpNfNJIIxv00DtidBHswZJj+u9AGj
	 OA+rLOmUzMXjrA1ThhaQqbmjyIw7d6uS7MRxGM2mu/pJEnEp2Hv0I++91sKt0z1rcm
	 Lq7y/44kR8AqyChidoWutjGNI07yzNUANMglAGYXKQHI40eq7r/1x6wDgPxghP68v0
	 ET0zZ18/rJ6a3XGLpc53SXoQDLTQCIlCiFV8jTgFyNKwUvf6xaY+E8pSzPwQz/s+z4
	 +hqM3bSBTHUxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CA8C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178748223368.7253.9239992314181024996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfaca24025024bfc9bf761e545d9b95ebc681051ab7da4caeb7420c6d963bc8d
Date: Sun, 23 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787482233
