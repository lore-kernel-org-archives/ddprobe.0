Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5143037C11E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 04:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783312114; cv=none; b=EKGDRrAm6UhYC/hdFkJCOuOE64htPCsYipL0rZ/MCSnRtDFs5e4ZgUFqAeExM7vCKuL07Uw0gAcnK1V85CRx3xMiPvktK4M8f9+zGN/rBdpyflJ6AnfBsPuVaGJ4o5LpiAeuotGtg0VcnqeR8+Gt4pLrKeSjtSAZLxpuqAhefUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783312114; c=relaxed/simple;
	bh=qJH/WLLs+qVh4VvbQnLfwCZ5kKrtF1z+jPFBZg2Z5Sg=;
	h=To:Subject:From:Message-Id:Date; b=VIKDrw5Wfoe0uwXyr6+eleOs0nQkVIq2YIl6YIIRfNhXFkqxF7ef78MH39pKBNPEFxqyNH0udow6KqCXEvve4X4WuD9dPy40zpswnQDtBGKqKv92bnr0vSasmn9qdCDKCw+Ui9h3VbrkeqrAoZXijSg2fg1naC5qbLQkmx0o42w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkNsQu7h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkNsQu7h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA8CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783312113;
	bh=qJH/WLLs+qVh4VvbQnLfwCZ5kKrtF1z+jPFBZg2Z5Sg=;
	h=To:Subject:From:Date:From;
	b=gkNsQu7hNC9l3+yupG9bxK4K1ZcTfewTaQ4Wy4SXhYHuk7fqqeI27UU/lGipyfSZT
	 6HHMEeXVdvrEjbGArAz5KmShVY3Gk4e5eztR4F6Ce763UQIiP9muXJpt27X/SeKb3I
	 cNo9QJutRJjMtUFj20P5vOj0WGvcC8FV/JV1sG3oueYDIvskkrqYJB9ohVYXMlFMak
	 h9JQU2oeXIIXbYsMeX/wZGaqVvaGIuG3UyhOhqDmODzjSUmHbCuGRZ5WTUA/CheSPE
	 urtAdJyT4JjJtjg58axo6RxasgAhfyRPYFNk0Jr0eemDnMm9KL473aIdwHxOrjtVao
	 7nKTggD/SfDyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8871C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178331211368.20999.7919186159110075451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8317de4c3bebe2621c2039a090d2393d40d98d7375c549aa8465462ec1bbd324
Date: Mon, 06 Jul 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783312113
