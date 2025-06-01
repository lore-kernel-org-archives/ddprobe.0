Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E921315E96
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748756994; cv=none; b=CYV92C8uDe4nCwORINxrAomm4tY/T/h9flELUx6IC3D3+XaIRHZlMnyMz5F0Pp7hVGSzp8c8Fr2/GhHsJObMiUUUbJAXX6ohXATg25LyKGT54OZRiyr8UZ+uOuszSY5vt7hGXNpaN6Gzz7Kr+Hv0x178c6rHe4zTyi7YarQnzaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748756994; c=relaxed/simple;
	bh=QJFVTaVEFzf5ljw+gfqwcxDONdEXWiJty88dmRaGjBk=;
	h=To:Subject:From:Message-Id:Date; b=uQq7sRrWoUQmPknYQ4PxAjZNJQKwhBxvD3KjXLSPIt1ps4kGE0H+PN1TOSHniT4/nmE5sL/wkgxoNaF+iqBnzFm/ODvyM0O/TZr7StQ2f5GNgVMlAO0BorsYNRS96/DwTd/iz9W0ghnxEHqGBu9KPQkXxdNT1vCD8LqK0lx5G4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwQ4VB85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwQ4VB85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7A3C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748756993;
	bh=QJFVTaVEFzf5ljw+gfqwcxDONdEXWiJty88dmRaGjBk=;
	h=To:Subject:From:Date:From;
	b=MwQ4VB855/5imDJUdlDsHqZQ/XJnpvCAl6GBUGiyt7mJQwmPagVVQnlgAJKeNEHlM
	 oq5ZwL/FcwvpXC9kpXjdgSruaSqUXX+0trLVtgYdE4XYNIAE19veZPQa06RDpc8VKU
	 Nhg6S/6OZ+XgpS18PhTJJ0zXMP7Mr+SoHodR9MjtJvg9+GGLB14m59k8qs+rxBPJMZ
	 GqKj06tZr6ESAVYkuUvdz2hwAi9lyAmnRuZcO+tdlC40+FXRjZnzOhb4oJthq/ySXp
	 xZe/ikm+MKqUUaVkDEkZbh6t8urf5NmH9vQiZGgtQQofMeBOUXiUlQ+dFOecL/ghi7
	 xa97YWf9BCc5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97183C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174875699359.964.12196677646874499274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f789fc4e071ba1b047be1c9933c20617acd9325e487890a90667b105ab0e6f1
Date: Sun, 01 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748756993
