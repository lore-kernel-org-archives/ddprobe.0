Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2204310955
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K41eNDgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AA45C433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697792296;
	bh=8eU0edpX0eT59/1lvnUN0Yo48tz9vQxTsBsGem2ISiM=;
	h=To:Subject:From:Date:From;
	b=K41eNDgpjKhZmQAjKp97BsYBEb15Q4C2C5ByGKP7FqShRevaeIGSXOdZl1DLoRQwd
	 fHM8/n6RKg0YVpW2UzQ+Y35eSseMlEDmoOuQGN8ps11c7ILydKYwTTBq3d9LTb/bLV
	 +bi111HLEkQOiJ+V+UjOl0oTvYS764OoyPRvee+GXKedkjujdLcIFlxuBnoE3CPq0U
	 HRj9P7UVe5fUYB6xJTPuLix3wBTscaBHR/ptVyKsHODnGnaAXgSyZLKWxZ1jJvjhRy
	 nglikfASWfDJ3CHqUTpJ91EZP9l/f7LaZStKKPiKG3flo+t/FHNT5FUoY7nv90pTtx
	 NsjPAbUrLeIvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72E50CDB47E
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169779229645.9496.882900292375797789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 681b5c314297b071a1464b49739e72e2f1a2a0d98e65a9dad0df9b3c0dae86c8
Date: Fri, 20 Oct 2023 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697792296
