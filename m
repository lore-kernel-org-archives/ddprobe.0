Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D400D185B5B
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732492553; cv=none; b=r3e+pqBLN8WaOkgLa+qMVJJh/pBhA4Yhb232lAzHEClEffJFaDXZgd+/+cVSvhmtQdKUna0H0tbbQ1t14pkYB8D2NAgO7aNogv3AmRaNytP1dbwNLhjtJHxUvb1R9qleumeGBlgCSBAnHr4iHzVVKKp89AhT5r8/nWnT8vg6MHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732492553; c=relaxed/simple;
	bh=32PQkSBDJE/iYqw9xPJJZE6bCoQ/Gcu4TNdGUgITJzw=;
	h=To:Subject:From:Message-Id:Date; b=q9PJ222DLHJTz7jqEbYg9FxVv3HJxF1SXI0bsX5N6jPvp7mJJEeigX03RiaurX59ZDggXqh2mjDvhnMas/fUzScFMJqlhrO89Vt/HDH7JeEwM8bN4NhvG3zFmuWcBmKvIaIOdvApKVcPfQx2+WaIdbJ8ZesmdiM8QnjCTkN2d24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X0Oc+DUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X0Oc+DUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A782FC4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732492553;
	bh=32PQkSBDJE/iYqw9xPJJZE6bCoQ/Gcu4TNdGUgITJzw=;
	h=To:Subject:From:Date:From;
	b=X0Oc+DUjbDeZjXa5+BA/vz+Din7F7ISfh7/YQfOtmkjj7gprd0P6uITzTmDT3nqId
	 PcsY9zIK5N5Czxyu1wGiukbeF9I3xDIOFwd2/N8ob4O8t8EItL/zrpJlm/wQWoUcBd
	 aXMmgHju90OrwP+xUQRIb0CDP6t4JJI83pskH93XhgQjxMZCZcdWGjmTlLMCXccCem
	 W3hTC3e7TPBEA1a5V6tamzVJVCCfPNvQMEgGXOjwXev4VyxKC7SYtUwlu0MU5Kv206
	 QeXh/j7GV/g0SjQky57RGKo6P12AnONUUL1u7uavI8HEgqGCbA2/DakFn6+r4EY/bc
	 QePZ070uXsiPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93693D3B7C2
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173249255359.4825.17051400020390812017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2723103934b27db4d051c4393605d9ce94322f0d747ac887dfeba087c131c772
Date: Sun, 24 Nov 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732492553
