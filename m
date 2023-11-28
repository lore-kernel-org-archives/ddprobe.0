Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10B84A33
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIEBLAWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77DC9C433C7
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701137896;
	bh=V8KGhZYW8VzHguF/uDnG4aBSKhtFfDcQ7tmms+W4rMM=;
	h=To:Subject:From:Date:From;
	b=sIEBLAWcZ3ycOeGQrlsZjWWOsUBJviyH1ajjAsMifSr31GBv3PesGQLWbJIVjCc1V
	 tKPqHPZRN5CkTio7qmuFp/CtP+Nn0tqIfGzZzbTjeEkdGCgNk4vGERl+A15wlBfD8f
	 F6Ra27sXmyXxhisprngYw9WKkW/F/QVMElGIZJxeBwJrJEkOb+z3d3JIvz1UZ+DnAm
	 icmSdyCzoOsEcJxXQS9UCS2MOiHJ6W16OCWK2EpPj7+43ZgIieuERLUa/9dO8xuEdV
	 X5m8//vE2R3i6cR6wn/6XDE3zbH2l/j25pklyWqAzzFfiMEMSjtBKGWoEoUHvjFjNd
	 2Jy4KLweU+9Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD51C4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170113789636.6123.7099129722206509858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b1480627c283e13ab282cebcc9e66eb35d992f874f528a76dbc55dacb2daf3
Date: Tue, 28 Nov 2023 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701137896
