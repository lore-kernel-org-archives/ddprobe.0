Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7B653BE
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 02:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717467323; cv=none; b=PniSZNqmw1h4CKuPjjRrJJiBTTaci9c2AZNIRUJ23XNt8o6SHzelCbm4+qQkzgSVSdnjXOxZzZtotQUd+6rjh5c91r2Lkl6oCOhDP35uK2NaenOuJXqz9qTQ1oXDK9nJE0TwfUK0Vt2H5Qk3K+VRdGUcVN0KNuS54JsNHGVq7xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717467323; c=relaxed/simple;
	bh=daY4MekGYastNNBJ2UPiC1a6nLj8lw60fSrhTq/Di8k=;
	h=To:Subject:From:Message-Id:Date; b=t0gIz4f9srseMSV2c2UHoJmqpeVDS7EvcaaHo2ZTLvRqPj5zfEWS9zas0FeoQSM6pKTul6YtCiJ+Ib/TQZqnc35nkoy/qO3orWnmOywiy2365ZrIdB1uaxhBwBtJKCYCNgOszY0S60/R72NsMeV0qp6ytM2E45FpueEsZQqLdfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BaXL6PlO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BaXL6PlO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3DA4C2BD10
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 02:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717467323;
	bh=daY4MekGYastNNBJ2UPiC1a6nLj8lw60fSrhTq/Di8k=;
	h=To:Subject:From:Date:From;
	b=BaXL6PlOZfGvHxfLiPEbbxivDZYKDBYHHhRlgST3HjqAH4+nnWf3Tq/pwnr/byWoR
	 M8QTfVKj2l88yd1WIBqupuEKML6ipHFF44YF5Gxcgq5zHISRw4rmlea5RX8JCBarrh
	 dxKVtfTQ8QZoRe5rNWSKnFX6GxGGnf6hvBaIqYtu1Tt2ORDkE/AjmH/tfwY6CxR/fd
	 DBUS0pHEJOmWPIbYPHYxwcnFkHte1Iqc9ZrwnefrN1zJ3paSsuX68hu9rQzY46rmFz
	 7juDQ2UWrwN9LnTOkH1MV3hXrkkM0FhpI1iK65b5vAaivYDnIGFXrRQbfgkseoAE0c
	 oUHdEGeFx84kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D87E9C25B75
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 02:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171746732281.11482.13187047537100836859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720f4d8806e6250592fe91189e4ef159a4d3bc09c26108b2e47edd7eb5d1d102
Date: Tue, 04 Jun 2024 02:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717467322
